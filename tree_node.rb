require './node_data'
# Binary Tree TreeNode
class TreeTreeNode < TreeNodeData
  attr_accessor :lchild, :rchild

  def initialize(data)
    super(data)
    @lchild = nil
    @rchild = nil
  end
end