require_relative "linked_list"
require_relative "node"

list = LinkedList.new

list.append("dog")
list.append("cat")
list.append("parrot")
puts list
puts list.size
