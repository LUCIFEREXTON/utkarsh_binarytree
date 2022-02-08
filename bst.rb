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

  def search(value, node = @head)
    unless node.nil?
      return true if node.data == value

      return search(value, node.lchild) if node.data > value

      return search(value, node.rchild)
    end
    false
  end

  def remove(value, node = @head)
    removeHelper(value, node)
    @n -= 1
  end

  def path_to_leaf_node(node = @head, queue = [])
    return if node.nil?

    queue.push(node.data)
    if node.lchild.nil? && node.rchild.nil?
      print "\n =>"
      queue.each { |nod| print "#{nod}->" }
    else
      path_to_leaf_node(node.lchild, queue)
      path_to_leaf_node(node.rchild, queue)
    end
    queue.pop
  end

  private

  # this helper method will avoid the multiple n decreses in recursion
  def remove_helper(value, node = @head)
    return nil if node.nil?

    if node.data > value
      node.lchild = removeHelper(value, node.lchild)
    elsif node.data < value
      node.rchild = removeHelper(value, node.rchild)
    elsif !node.lchild.nil? && !node.rchild.nil?
      min_of_right = find_min(node.rchild)
      node.data = min_of_right.value
      node.rchild = removeHelper(min_of_right.value, node.rchild)
    elsif !node.lchild.nil?
      node = node.lchild
    elsif !node.rchild.nil?
      node = node.rchild
    else
      node = nil
    end
    node
  end
end
