require_relative "node"

# linked list
class LinkedList
  attr_accessor :name, :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      temp = @head
      temp = temp.next_node until temp.next_node.nil?
      temp.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    counter = 0
    temp = @head
    until temp.nil?
      counter += 1
      temp = temp.next_node
    end
    counter
  end

  def head
    @head.value
  end

  def to_s
    "( #{@head.value} ) and #{@tail}"
  end
end
