require './node_data'
# LL node
class ListNode < NodeData
  attr_accessor :next

  def initialize(data)
    super(data)
    @next = nil
  end
end