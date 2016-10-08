
# Array
["segunda", "terça", "quarta"]
["segunda", true, 1]
puts ["segunda", "terça", "quarta"].inspect

array = Array.new
puts array.inspect
array = Array.new(3)
puts array.inspect
array = Array.new(3, 10)
puts array.inspect
array = Array.new(3) {10}
puts array.inspect

array = []
array[0] = "fulano"
array[1] = "sicrano"
array[10] = "sicrano"
puts array.inspect

puts %w(segunda terça quarta).inspect
puts %w(segunda terça\ feira quarta).inspect

## Accessing Elements
array = ["segunda", "terça", "quarta"]

puts array[0]
puts array.first
puts array[array.length-1]
puts array[-1]
puts array.last
# array[start,length] - slice
puts array[0, 3].inspect
puts array[1, 2].inspect
puts array[1, 5].inspect
# array[start..end] - slice
puts array[0..-1].inspect
puts array[1..-1].inspect
puts array.last(2).inspect
puts array.drop(1).inspect

# Iterating over Arrays
block = '#'
(1..4).to_a.each {
  puts block
  block += '#'
}

block = '#'
4.times do
  puts block
  block += '#'
end

numbers = (1..10).to_a

for number in numbers
  print "#{number}, "
end

numbers.each {|number|
  print "#{number}, "
}

numbers.reverse_each {|number|
  print "#{number}, "
}

["segunda", "terça", "quarta"].each_index {|index| print "#{index},"}

["segunda", "terça", "quarta"].each_with_index {|value, index|
  puts "#{index} => #{value}"
}

puts
double = numbers.map {|number|
  number*2
}
puts double.inspect

puts (1..10).to_a.collect {|n| n*2}.inspect

puts (1..10).to_a.select {|n| n.even?}.inspect
puts (1..10).to_a.reject {|n| n.odd?}.inspect
puts (1..10).to_a.keep_if {|n| n.even?}.inspect

# 1+2+3+4+5+6+7+8+9+10
puts (1..10).to_a.reduce{|s,v| s + v}
puts (1..10).to_a.reduce(:+)
# 1*2*3*4*5*6*7*8*9*10
puts (1..10).to_a.reduce{|s,v| s * v}
puts (1..10).to_a.reduce(1){|s,v| s * v}
puts (1..10).to_a.reduce(:*)
puts (1..10).to_a.reduce(1, :*)

## Methods
array = ["segunda", "terça", "quarta"]
puts array.count
puts array.length
puts array.size
puts array.empty?
puts [].empty?

puts array.include?("segunda")
puts array.include?("")

# Range
puts (1..10).to_a.inspect
puts (1...10).to_a.inspect
puts (10..1).to_a.inspect

(0..99).step(2).reverse_each{|n|
  # print "#{n}, " if n.even?
  print "#{n}, "
}

# Hash
people = {
  "fulano" => "fulano@email.com",
  "sicrano" => "sicrano@email.com"
}
puts people.inspect
puts people["fulano"]

people = {
  :fulano => "fulano@email.com",
  :sicrano => "sicrano@email.com"
}
puts people.inspect
puts people[:fulano]

people = {
  fulano: "fulano@email.com",
  sicrano: "sicrano@email.com"
}
puts people.inspect
puts people[:fulano]

people = {}
people = Hash.new
people[:fulano] = "fulano@email.com"
puts people.inspect

people = {
  fulano: "fulano@email.com",
  sicrano: "sicrano@email.com",
  beltrano: "beltrano@email.com"
}

people.each{|key, value|
  puts "#{key}: #{value}"
}

puts people.keys().inspect
puts people.values().inspect
