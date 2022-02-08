require_relative './bst'
# 1
bstree = Bst.new
bstree.insert('Hello', 'world')
bstree.insert('Yes')
# 2
print 'Minimum data: '
puts bstree.min.data
# 3
puts bstree.in_order # left root right
puts bstree.pre_order # root left right
puts bstree.post_order # left right root
# 4
puts bstree.search('yes') ? 'Yes' : 'No'
# 5
bstree.insert('Nothing')
puts 'After adding "Nothing"'
puts bstree.in_order
bstree.remove('Nothing')
puts 'After removing "Nothing"'
puts bstree.in_order
# 6
bstree2 = Bst.new
bstree2.load_bst_from_file('log.txt')
bstree2.insert(50, 30, 20, 40, 70, 60, 80)
bstree2.path_to_leaf_node

# 7

# 8
bstree2.write_to_file('log.txt')
# 9
bstree3 = Bst.new
bstree3.load_bst_from_file('log.txt')
