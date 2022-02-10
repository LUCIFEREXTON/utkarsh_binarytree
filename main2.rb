require_relative './bst'

bstree = Bst.new
bstree.insert('Hello', 'world', 'Yes')
print 'Minimum data: '
puts bstree.min.data