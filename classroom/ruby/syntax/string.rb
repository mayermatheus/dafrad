# String
# http://ruby-doc.org/core-2.3.1/doc/syntax/literals_rdoc.html#label-Strings

  # Single Quote: (\', \\, )
  puts 'lorem ipsum dolor'.class
  puts 'lorem ipsum dolor'
  puts 'lorem ipsum dolor'
  puts 'lorem\' ipsum dolor'
  puts 'lorem\\ ipsum dolor'
  puts 'lorem\nipsum dolor'

  # Double Quote
  puts "lorem ipsum dolor".class
  puts "lorem ipsum dolor"
  puts "lorem\nipsum dolor"
  puts "lorem ipsum
  dolor"

  puts "lorem ipsum dolor".object_id.to_s(32)
  puts "lorem ipsum dolor".object_id.to_s(32)

  # Interpolation
  puts '1 + 1 = #{1 + 1}'
  puts "1 + 1 = #{1 + 1}"
  puts "%s %s" % [10, 10]
  puts format("%s", 10) # Kernel#format
  puts format("%{valor}", valor: 10)

  # Percent String
  # http://ruby-doc.org/core-2.3.1/doc/syntax/literals_rdoc.html#label-Percent+Strings
  puts %(lorem ipsum dolor)
  puts %q(1 + 1 is 2)
  puts %q[1 + 1 is 2]
  puts %q{1 + 1 is 2}
  puts %q|1 + 1 is 2|
  puts %q!1 + 1 is 2!
  puts %q?1 + 1 is 2?
  puts %q\1 + 1 is 2\
  puts %q(1 + 1 is #{1 + 1})
  puts %Q(1 + 1 is 2)
  puts %Q(1 + 1 is #{1 + 1})
  puts %Q(1 + 1 is #{1 + 1})
  puts %i(lorem ispum dolor).inspect
  puts %s(lorem ispum dolor).inspect
  puts %r(lorem ispum dolor).inspect
  puts %w(lorem ispum dolor).inspect
  puts %x(ls) # `ls`

  # heredoc
  # http://ruby-doc.org/core-2.3.1/doc/syntax/literals_rdoc.html#label-Here+Documents
  puts <<HEREDOC
lorem ipsum
dolor
HEREDOC

  puts <<-HEREDOC
lorem ipsum
dolor
  HEREDOC

  puts <<-HEREDOC
  1 + 1 is #{1 + 1}
  HEREDOC

  puts <<-'HEREDOC'
  1 + 1 is #{1 + 1}
  HEREDOC

  # squiggly heredoc
  puts <<~HEREDOC
    lorem ipsum
      dolor
  HEREDOC

  puts <<-`HEREDOC`
  ls
  HEREDOC

  # Single character
  puts ?a

  # Concat + <<

  # Transform upcase downcase


# Symbol
