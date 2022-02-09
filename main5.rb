# 5
require_relative './bst'
bstree = Bst.new
bstree.insert('Hello', 'world', 'Yes', 'Nothing')
puts bstree.in_order
bstree.remove('Nothing')
puts 'After removing "Nothing"'
puts bstree.in_order