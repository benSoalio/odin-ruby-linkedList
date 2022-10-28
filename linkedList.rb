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

  def to_s
    @self
  end
end

list = LinkedList.new
p list
list.prepend(1)
p list
list.prepend(2)
p list
list.prepend(3)
p list
# list.append(4)
# p list