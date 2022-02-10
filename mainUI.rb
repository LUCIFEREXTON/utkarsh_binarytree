require './bst'
require './linked_list'

bstree = Bst.new
ll = LinkedList.new
while true
  puts 'Which Data Structure You want to use'
  puts '1. Binary Search Tree'
  puts '2. Linked List'
  puts '________________________________________________'
  puts '| 1 | Binary Search Tree                        |'
  puts '| 2 | Linked List                               |'
  puts '|ESC| Exit                                      |'
  puts '|_______________________________________________|'
  c1 = gets.chomp
  return if c1 =="\e"
  case c1
  when '1'
    while true
      puts '           Binary Search Tree'
      puts '________________________________________________'
      puts '| 1 | Insert Elements                           |'
      puts '| 2 | Find Min Element                          |'
      puts '| 3 | Find Max Element                          |'
      puts '| 4 | Print In-Order                            |'
      puts '| 5 | Print Pre-Order                           |'
      puts '| 6 | Print Post-Order                          |'
      puts '| 7 | Search Element                            |'
      puts '| 8 | Remove Element                            |'
      puts '| 9 | Print All Path from Head to Leaf Node     |'
      puts '| 10| Load BST from file and then continue it   |'
      puts '| <<|Previous Menu                              |'
      puts '|ESC| Exit                                      |'
      puts '|_______________________________________________|'
      c2 = gets.chomp
      case c2
      when '<<'
        break
      when "\e"
        return
      when '1'
        puts 'Press escape when no more numbers to press'
        while true
          print '>>'
          result = gets.chomp
          print "\n"
          break if result == "\e"
          begin
            result = Integer(result)
            bstree.insert(result)
          rescue ArgumentError, TypeError
            puts 'Invalid input.'
          end
        end
      when '2'
        puts "Minimum value of BST is #{bstree.min}"
      when '3'
        puts "Maximum value of BST is #{bstree.max}"
      when '4'
        bstree.in_order
      when '5'
        bstree.pre_order
      when '6'
        bstree.post_order
      when '7'
        puts 'Enter element to search'
        se = gets.chomp
        puts bstree.search(se) ? 'Found' : 'Not Found'
      when '9'
        bstree.path_to_leaf_node
      when '10'
        if File.file?('log.txt')
          bstree.load_bst_from_file('log.txt')
          puts 'Press escape when no more numbers to press'
          while true
            print '>>'
            result = gets.chomp
            print "\n"
            break if result == "\e"
            begin
              result = Integer(result)
              bstree.insert(result)
            rescue ArgumentError, TypeError
              puts 'Invalid input.'
            end
          end
        else
          puts 'No file Exist'
        end
      when '8'
        puts 'Enter element to delete'
        del = gets.chomp
        bstree.remove(del)
      end
    end
  when '2'
    while true
      puts '                Linked List'
      puts '________________________________________________'
      puts '| 1 | Insert Elements                           |'
      puts '| 2 | Search Element                            |'
      puts '| 3 | Remove Element                            |'
      puts '| 4 | Print All Elements                        |'
      puts '| <<|Previous Menu                              |'
      puts '|ESC| Exit                                      |'
      puts '|_______________________________________________|'
      c2 = gets.chomp
      case c2
      when '<<'
        break
      when "\e"
        return
      when '1'
        puts 'Press escape when no more numbers to press'
        while true
          print '>>'
          result = gets.chomp
          print "\n"
          break if result == "\e"
          ll.insert(result)
        end
      when '2'
        puts 'Enter element to search'
        se = gets.chomp
        puts ll.search(se) ? 'Found' : 'Not Found'
      when '3'
        puts 'Enter element to delete'
        del = gets.chomp
        ll.remove(del)
      when '4'
        ll.show
      end
    end
  end
end