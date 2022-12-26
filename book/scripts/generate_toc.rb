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

## 2-letter language code of the book to-be-generated is passed into this script.
BOOK_LANGUAGE = ARGV[0]
puts "Generating ToC for language: #{BOOK_LANGUAGE}"

## Files to be used for the different languages
## Note: the folder structure for the patterns is slightly different for 'en' than it is for the other languages,
## hence this slightly complicated logic here.
if (BOOK_LANGUAGE == "en")
  TOC_TEMPLATE_FILE = "../en/toc_template.md"
  TOC_FILE = "../en/toc.md"  
  PATTERNS = Dir["../../patterns/2-structured/*.md","../../patterns/2-structured/project-setup/*.md", "../../patterns/3-validated/*.md"]
else 
  TOC_TEMPLATE_FILE = "../#{BOOK_LANGUAGE}/toc_template.md"
  TOC_FILE = "../#{BOOK_LANGUAGE}/toc.md"
  PATTERNS = Dir["../../translation/#{BOOK_LANGUAGE}/patterns/*.md"]
end

# Generate list of patterns and sort them by name
pattern_overview = generate_patterns_overview(PATTERNS)
pattern_overview = pattern_overview.sort.to_h

toc_snippet = pattern_overview.map{|title, values| "* [#{title}](#{values[:file]}) - #{values[:patlet]}"}
toc_snippet = toc_snippet.join("\n")

## Inject the list of patterns into the ToC template
new_toc_content = open(TOC_TEMPLATE_FILE).readlines().join()
new_toc_content = new_toc_content.gsub(/<<PATTERS_HERE>>/,toc_snippet)

## Write the new ToC to file
File.write(TOC_FILE, new_toc_content)

puts "Written new ToC for #{BOOK_LANGUAGE} book to #{TOC_FILE}"
