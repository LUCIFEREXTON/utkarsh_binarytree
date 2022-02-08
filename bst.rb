require_relative './node'

class Bst
  attr_accessor :head, :n

  def initialize
    @head = nil
    @n = 0
  end

  def insert(*d)
    d.each{ |data| 
      if @head.nil?
        @head = Node.new(data)
      else
        current = @head
        prev = @head
        until current.nil?
          prev = current
          current = data < current.data ? current.lchild : current.rchild
        end
        if data < prev.data
          prev.lchild = Node.new(data)
        else
          prev.rchild = Node.new(data)
        end
      end
      @n += 1
    }
  end
end
