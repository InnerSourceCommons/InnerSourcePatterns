require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'pp'

def collect_section_nodes(file, section_title)
    markdown = open(file).readlines().join
    doc = CommonMarker.render_doc(markdown)

    title_found = false
    section_nodes = []

    doc.walk do |node|
        if node.type == :header
        if title_found == false
            node.each do |subnode|
            if subnode.type == :text and subnode.string_content == section_title
                title_found = true
            end
            end
        # stop the recursion once the next header is reached
        # TODO: is this correct, or should we check if this is another `##` header, rather than any header?
        else
            break 
        end
        # once the title has been found, collect all nodes up to the next header
        elsif title_found == true 
        section_nodes << node
        end
    end

    return section_nodes
end

# Extracts the value of a specific section from a markdown file
def extract_section(file, section_title)
    markdown = open(file).readlines().join
    doc = CommonMarker.render_doc(markdown)

    title_found = false
    section_nodes = []

    # once the header in question is found, extract all the text nodes from the
    # subsequent paragaph
    doc.walk do |node|
        if node.type == :header
        node.each do |subnode|
            if subnode.type == :text and subnode.string_content == section_title
            title_found = true
            end
        end
        elsif node.type == :paragraph && title_found == true
        node.each do |subnode|
            section_nodes += extract_text(subnode)
        end
        break # stop the recursion once the paragraph has been processed
        end
    end

    section_content = section_nodes.join("")
    return section_content
end

# extracts the pure text content from this CommonMarker node, and its children.
# returns an array of strings
def extract_text(node)
    section_nodes = []
    if node.type == :softbreak
        section_nodes << " "
    elsif node.type == :text or node.type == :code
        section_nodes << node.string_content
    else
        node.each do |subnode|
        section_nodes += extract_text(subnode)
        end
    end
    return section_nodes
end

def generate_markdown_filename(org_name)
    markdown_filename = org_name.downcase.tr(" ", "-").gsub(/[^\w.-]/, "")
    markdown_filename = "#{markdown_filename}.md"
    return markdown_filename
end

PATTERNS = Dir["../patterns/2-structured/*.md","../patterns/2-structured/project-setup/*.md", "../patterns/3-validated/*.md"]
ORGS = File.readlines('adopters.txt').map(&:chomp)

adopter_patterns = Hash.new()
pattern_titles = Hash.new()

# init with empty lists
ORGS.each do |org|
    adopter_patterns[org] = []
end

PATTERNS.each do |file|
    title = extract_section(file, "Title")
    pattern_titles[file] = title

    known_instances = collect_section_nodes(file, "Known Instances")
    known_instances = known_instances.map{|n| extract_text(n)}.join(" ")
    
    ORGS.each do |org|
        if known_instances.include? org
            adopter_patterns[org] << file
        end
    end
end 

adopter_patterns.each do |org, patterns_files|
    markdown_filename = generate_markdown_filename(org)

    file_content = "# #{org}\n\n"
    file_content += "These are the InnerSource Patterns that **#{org}** has adopted:\n\n"
    file_content += patterns_files.map{|f| "* [#{pattern_titles[f]}](#{f})"}.join("\n")
    file_content += "\n\n"
    file_content += "If you work at **#{org}** and want to modify the list above, go to pattern that you are using, and add **#{org}** to **Known Instances** section.\n"
    file_content += "Use the 'Edit on GitHub' functionality to do this.\n"
    file_content += "Once the Pull Request with your changes has been merged, the list above will update automatically.\n"
    
    File.write(markdown_filename, file_content)
end

# pp adopter_patterns

# puts adopter_patterns.map{|patterns| patterns.count}.reduce(&:+)


