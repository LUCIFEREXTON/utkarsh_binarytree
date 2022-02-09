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
end