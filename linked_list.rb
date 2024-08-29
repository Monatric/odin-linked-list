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
      self.tail = Node.new(value)
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

  # def head
  #   @head.value
  # end

  def at(index)
    temp = @head
    i = 0
    until temp.nil?
      return temp.value if index == i

      return nil if temp.nil?

      temp = temp.next_node

      i += 1
    end
  end

  def pop
    "Canoot delete" if head.value.nil?
    self.head = nil if tail.value.nil?

    cur = @head
    prev = nil

    until cur.next_node.nil?
      prev = cur
      cur  = cur.next_node
    end
    prev.next_node = cur.next_node
    p cur.value
  end

  def contains?(value)
    temp = @head
    until temp.nil?
      return true if temp.value == value

      temp = temp.next_node
    end
  end

  def to_s
    temp = @head
    until temp.nil?
      return print " ( nil )" if temp.nil?

      print "( #{temp.value} ) -> "

      temp = temp.next_node
    end
  end
end
