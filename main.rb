require_relative "linked_list"
require_relative "node"

list = LinkedList.new

list.append("parrot")
list.append("dog")
list.prepend("cat")
puts list
puts list.size
puts list.head
