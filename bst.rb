require_relative './node'

# binary search tree
class Bst
  attr_accessor :head, :n

  def initialize
    @head = nil
    @n = 0
  end

  def insert(*d)
    d.each do |data|
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
    end
  end

  def max(node = @head)
    return nil if node.nil?
    return node if node.rchild.nil?

    max(node.rchild)
  end

  def min(node = @head)
    return nil if node.nil?
    return node if node.lchild.nil?

    max(node.lchild)
  end

  def in_order(node = @head)
    return if node.nil?

    in_order(node.lchild)
    print "#{node.data}, "
    in_order(node.rchild)
  end

  def pre_order(node = @head)
    return if node.nil?

    print "#{node.data}, "
    in_order(node.lchild)
    in_order(node.rchild)
  end

  def post_order(node = @head)
    return if node.nil?

    in_order(node.lchild)
    in_order(node.rchild)
    print "#{node.data}, "
  end
end
