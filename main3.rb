# 3
require_relative './bst'
bstree = Bst.new
bstree.insert('Hello', 'world', 'Yes')
puts bstree.in_order # left root right
puts bstree.pre_order # root left right
puts bstree.post_order # left right root