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

  pattern_overview = []

  patterns.each do |file|
    title = extract_section(file, "Title")
    patlet = extract_section(file, "Patlet")
    pattern_overview << "[#{title}](#{file}) - #{patlet}"
  end

  pattern_overview
end

TOC_TEMPLATE_FILE = "./toc_template.md"
TOC_FILE = "./toc.md"

pattern_overview = generate_patterns_overview()

new_toc_content = open(TOC_TEMPLATE_FILE).readlines().join()
new_toc_content = new_toc_content.gsub(/<<PATTERS_HERE>>/,pattern_overview.join("\n"))

File.write(TOC_FILE, new_toc_content)

puts "Written new ToC for book"
