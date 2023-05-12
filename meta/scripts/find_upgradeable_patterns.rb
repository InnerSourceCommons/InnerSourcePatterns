require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'pp'

# ------------------------------------------------------------------------------------------------------------
# This script scans all patterns in /patterns/1-initial and /patterns/2-structured.
# Based on the number of Known Instances in the pattern, it suggests which patterns that might be ready to be leveled-up.
#
# The number of Known Instances are only one of the [requirement](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/meta/contributor-handbook.md#requirements-level-2---structured) 
# for our patterns to reach the next level. Therefore reading the pattern and the level requirements in detail is still required
# to decide whether or not a pattern can be pushed to the next level.

# NOTE: This script and `/book/scripts/generate_toc.rb` have some overlap in how they are parsing markdown.
# However the overlap seemed minimal, so I opted not to do any deduplication of code.
# ------------------------------------------------------------------------------------------------------------

# Count Known Instances in a pattern
# - return 0 if the section does not exist, or does not contain the expected list structure
# - return <count of Known Instances>
def count_known_instances(file)
  section_nodes = collect_section_nodes(file, "Known Instances")
  list_nodes = []
  # pick the first list in the "Known Instances" section, and return the number of elements in that list.
  # CAUTION: this assumes a certain structure across all patterns. Therefore fairly brittle.
  list_nodes = section_nodes.select {|n| n.type == :list}

  known_instances_count = 0
  known_instances_count = list_nodes.first.count if !list_nodes.first.nil?

  return known_instances_count
end

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


# Main block

puts "## Initial => Structured"
puts "## 1-Initial patterns primed for upgrade to 2-Structured (based on Known Instances only)"
l1_patterns = Dir["../../patterns/1-initial/*.md"]

l1_patterns.each do |file|
  known_instances_count = count_known_instances(file)
  puts "#{known_instances_count} | #{file}" if known_instances_count >= 1
end

puts "\n"
puts "## Structured => Validated"
puts "## 2-Structured patterns primed for upgrade to 3-Validated (based on Known Instances only)"
l2_patterns = Dir["../../patterns/2-structured/*.md", "../../patterns/2-structured/project-setup/*.md"]

l2_patterns.each do |file|
  known_instances_count = count_known_instances(file)
  puts "#{known_instances_count} | #{file}" if known_instances_count >= 3
end
