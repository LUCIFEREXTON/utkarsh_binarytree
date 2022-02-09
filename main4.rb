# 4
require_relative './bst'
bstree = Bst.new
bstree.insert('Hello', 'world', 'Yes')
puts bstree.search('yes') ? 'Yes' : 'No'