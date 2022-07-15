require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'pp'

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


def generate_patterns_overview(patterns)
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

## Determine the language for which the book is generated, based on the branch name passed to this script
GENERATED_LANGUAGE = (ARGV[0] == "translation-japanese") ? "jp" : "en"

## Files to be used
if (GENERATED_LANGUAGE == "jp")
  TOC_TEMPLATE_FILE = "../jp/toc_template.md"
  TOC_FILE = "../jp/toc.md"
else 
  TOC_TEMPLATE_FILE = "../en/toc_template.md"
  TOC_FILE = "../en/toc.md"  
end

puts "Generatign ToC for language: #{GENERATED_LANGUAGE}"

# Generate list of patterns and sort them by name
# patterns = Dir["../patterns/2-structured/*.md","../patterns/2-structured/project-setup/*.md", "../patterns/3-validated/*.md"]
patterns = Dir["../../translation/japanese/patterns/*.md"]
pattern_overview = generate_patterns_overview(patterns)
pattern_overview = pattern_overview.sort.to_h

toc_snippet = pattern_overview.map{|title, values| "* [#{title}](#{values[:file]}) - #{values[:patlet]}"}
toc_snippet = toc_snippet.join("\n")

# Inject the list of patterns into the ToC template
new_toc_content = open(TOC_TEMPLATE_FILE).readlines().join()
new_toc_content = new_toc_content.gsub(/<<PATTERS_HERE>>/,toc_snippet)

#
# ## Generate list of patterns in Japanese and sort them by name
# patterns_jp = Dir["../translation/japanese/patterns/*.md"]
# pattern_overview_jp = generate_patterns_overview(patterns_jp)
# pattern_overview_jp = pattern_overview_jp.sort.to_h
#
# toc_snippet_jp = pattern_overview_jp.map{|title, values| "* [#{title}](#{values[:file]}) - #{values[:patlet]}"}
# toc_snippet_jp = toc_snippet_jp.join("\n")
#
# ## Inject the list of patterns in Japanese into the ToC template
# new_toc_content = new_toc_content.gsub(/<<TRANSLATION_HERE>>/,toc_snippet_jp)


## Write the new ToC to file
File.write(TOC_FILE, new_toc_content)

puts "Written new ToC for book to #{TOC_FILE}"
