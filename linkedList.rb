require './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value)

    if @head.nil?
      @head = node
    elsif head.next_node.nil?
      @head.next_node = node
    else
      current_node = @head.next_node
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head
    @head = node
  end

  def size
    index = 0
    return index if @head.nil?

    current_node = @head 
    until current_node.next_node.nil?
      current_node = current_node.next_node
      index += 1
    end
    index + 1
  end

  def head
    @head
  end

  def tail
    if @head.nil?
      nil
    elsif head.next_node.nil?
      @head
    else
      current_node = @head.next_node
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node
    end
  end

  def at(index)
    return 'list empty' if @head.nil?

    i = 0
    current_node = @head 
    until current_node.next_node.nil?
      current_node = current_node.next_node
      i += 1
      return current_node if i == index
    end
  end

  def to_s
    @self
  end
end

list = LinkedList.new
list.prepend(1)
list.prepend(2)
list.prepend(3)
list.append(4)
p list.at(0)
p list.at(2)
p list.at(3)

