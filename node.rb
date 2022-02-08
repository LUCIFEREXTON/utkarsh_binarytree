# Node class fro eahc node
class Node
  attr_accessor :data, :lchild, :rchild

  def initialize(data)
    @data = data
    @lchild = nil
    @rchild = nil
  end
end
