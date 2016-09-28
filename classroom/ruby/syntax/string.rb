# String
# http://ruby-doc.org/core-2.3.1/doc/syntax/literals_rdoc.html#label-Strings

  # Single Quote: (\', \\)
  puts 'lorem ipsum dolor'.class
  puts 'lorem ipsum dolor'
  puts 'lorem\' ipsum dolor'
  puts 'lorem\\ ipsum dolor'
  puts 'lorem\nipsum dolor'
  puts 'lorem ipsum
dolor'

  # Double Quote
  puts "lorem ipsum dolor".class
  puts "lorem ipsum dolor"
  puts "lorem\nipsum dolor"
  puts "lorem ipsum
  dolor"

  # Interpolation
  puts '1 + 1 = #{1 + 1}'
  puts "1 + 1 = #{1 + 1}"

  puts "%s:%s" % [10, 10]
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
  puts %Q(1 + 1 is\n#{1 + 1})
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

  puts <<LOREM
lorem ipsum
dolor
LOREM

  puts <<-HEREDOC
  ping: option requires an argument -- h
  usage: ping [-AaDdfnoQqRrv] [-b boundif] [-c count] [-G sweepmaxsize]
              [-g sweepminsize] [-h sweepincrsize] [-i wait] [−k trafficclass]
              [-l preload] [-M mask | time] [-m ttl] [-p pattern]
              [-S src_addr] [-s packetsize] [-t timeout][-W waittime] [-z tos]
              host
         ping [-AaDdfLnoQqRrv] [-b boundif] [-c count] [-I iface] [-i wait]
              [−k trafficclass] [-l preload] [-M mask | time] [-m ttl] [-p pattern] [-S src_addr]
              [-s packetsize] [-T ttl] [-t timeout] [-W waittime]
              [-z tos] mcast-group
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

  # Concat: + <<
  puts "lorem".+("ipsum")
  puts "lorem".+ "ipsum"
  puts "lorem"+"ipsum"
  puts "lorem"+1
  puts "lorem"+1.to_s
  puts "lorem#{1}"

  name = "lorem"
  puts name.object_id.to_s(32)
  name << "ipssum"
  puts name
  puts name.object_id.to_s(32)

  # Transform upcase downcase
  name = "lorem"
  puts name.upcase
  puts name
  puts name.upcase!
  puts name
  puts name.downcase
  puts "lorem ipsum dolor".capitalize

  # Outros
  puts "".empty?
  puts "lorem ipsum dolor".include? "dolor"
  puts "lorem ipsum dolor".split(" ").inspect
  puts "lorem ipsum dolor".gsub "dolor", "DOLOR"

# Symbol

puts "lorem ipsum dolor".object_id.to_s(32)
puts "lorem ipsum dolor".object_id.to_s(32)
puts :"lorem ipsum dolor".class
puts :"lorem ipsum dolor"
puts :lorem
puts :"lorem ipsum dolor".object_id.to_s(32)
puts :"lorem ipsum dolor".object_id.to_s(32)

puts :"lorem ipsum\ndolor"
puts :"1 + 1 = #{1+1}"

puts global_variables.inspect
puts methods.inspect

# methods
puts :lorem.to_s+:ispum.to_s
puts :lorem.to_s<<:ispum.to_s
puts "#{:lorem}#{:ispum}"
