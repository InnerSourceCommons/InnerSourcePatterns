require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'pp'

# Extracts the value of a specific section from a markdown file
def extract_section(file, section_title)
  markdown = open(file).readlines().join
  doc = CommonMarker.render_doc(markdown)

  title_found = false
  title_nodes = []

  # once the header in question is found, extract all the subsequent text nodes
  doc.walk do |node|
    if node.type == :header
      node.each do |subnode|
        if subnode.type == :text and subnode.string_content == section_title
          title_found = true
        end
      end
    elsif node.type == :paragraph && title_found == true
      node.each do |subnode|
        if subnode.type == :text
          title_nodes << subnode.string_content
        end
      end
      break
    end
  end

  title = title_nodes.join(" ")
  return title
end

def generate_patterns_overview
  patterns = Dir["../patterns/2-structured/*.md","../patterns/2-structured/project-setup/*.md"]

  pattern_overview = Hash.new()

  patterns.each do |file|
    title = extract_section(file, "Title")
    patlet = extract_section(file, "Patlet")
    pattern_overview[title] = {
      :file => file,
      :patlet => patlet
    }
  end

  pattern_overview
end


# Main block

TOC_TEMPLATE_FILE = "./toc_template.md"
TOC_FILE = "./toc.md"

## Generate list of patterns and sort them by name
pattern_overview = generate_patterns_overview()
pattern_overview = pattern_overview.sort.to_h

toc_snippet = pattern_overview.map{|title, values| "[#{title}](#{values[:file]}) - #{values[:patlet]}"}
toc_snippet = toc_snippet.join("\n")

## Inject the list of patterns into the ToC template
new_toc_content = open(TOC_TEMPLATE_FILE).readlines().join()
new_toc_content = new_toc_content.gsub(/<<PATTERS_HERE>>/,toc_snippet)

## Write the new ToC to file
File.write(TOC_FILE, new_toc_content)

puts "Written new ToC for book to #{TOC_FILE}"
