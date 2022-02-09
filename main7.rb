require_relative './bst'
bstree = Bst.new
script = true

puts 'Press "1" Enter integer to put in bstree'
puts 'Press "2" To load BST from file then start entering other value of BST'
puts 'Press Esc to quit'

case gets.chomp
when '2'
  bstree.load_bst_from_file('log.txt')
when "\e"
  script = false
end

while script
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

bstree.write_to_file('log.txt')