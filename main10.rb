require './linked_list'

ll = LinkedList.new

ll.insert(3)
ll.show
puts ll.search(4)
########################################
ll.remove(3)
ll.insert(5)
ll.show
