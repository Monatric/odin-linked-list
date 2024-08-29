require_relative "linked_list"
require_relative "node"

list = LinkedList.new

list.append("dog")
list.append("cat")
list.append("parrot")
list.append("hamster")
list.append("snake")
list.append("turtle")

puts list

# list.size
# list.pop
# list.find("cat")
# p list.contains?("test")
# p list.at(10)
# list.head.value
# list.tail.value
# list.prepend("shark")
