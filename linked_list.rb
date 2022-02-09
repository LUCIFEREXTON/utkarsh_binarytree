require './list_node'
# Linked List
class LinkedList
  attr_accessor :head, :tail, :n

  def initialize
    @head = nil
    @tail = nil
    @n = 0
  end

  def insert(*d)
    d.each do |data|
      if @head.nil?
        @head = ListNode.new(data)
        @tail = @head
      else
        @tail.next = ListNode.new(data)
        @tail = @tail.next
      end
      @n += 1
    end
  end

  def search(value, node = @head)
    until node.nil?
      return true if node.data == value

      node = node.next
    end
    false
  end

  def remove(value, node = @head)
    prev = nil
    while !node.nil? && node.data != value
      prev = node
      node = node.next
    end
    return if node.nil?

    if !prev.nil?
      @tail = prev if @tail == node
      prev.next = node.next
    else
      @tail = nil if @tail == @head
      @head = @head.next
    end
  end

  def show(node = @head)
    until node.nil?
      print "#{node.data}-->"
      node = node.next
    end
    print "\n"
  end
end