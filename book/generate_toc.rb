require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'pp'

# Extracts the value of the title section from a markdown file

def extract_section(file, section_title)
  markdown = open(file).readlines().join
  doc = CommonMarker.render_doc(markdown)

  title_found = false
  title_nodes = []

  # Capitalize all regular text in headers
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

  # pp title_nodes

  title = title_nodes.join(" ")
  return title

end



patterns = Dir["../patterns/2-structured/*.md","../patterns/2-structured/project-setup/*.md"]

patterns.each do |file|
  title = extract_section(file, "Title")
  patlet = extract_section(file, "Patlet")
  puts "[#{title}](#{file}) - #{patlet}"
end
