# http://ruby-doc.org/core-2.3.1/doc/syntax/control_expressions_rdoc.html

# if Expression: then, esle, elsif
number = 10

if number.even? then
  puts "number is even."
end

if number.even?
  puts "number is even."
end

number = 10
result = if number.even?
  "..."
  "number is even."
end
puts result

if number.even?
  puts "number is even."
else
  puts "number is odd."
end

number = 10
if number.even?
  puts "number is even."
elsif number.odd?
  puts "number is odd."
else
  puts "it is not a number"
end

# Ternary if
number = 10
result = number.even? ? "number is even." : "number is odd."
puts result
end

# unless Expression
number = 10
unless number.odd? then # if not
  puts "number is odd."
end

unless number.odd?
  puts "number is odd."
end

# Modifier if and unless
number = 10;
kind = :odd if number.odd?
kind = :even if number.even?
puts kind

# case Expression: when, else
name = "lorem ipsum"
case name
when "lorem ipsum"
  puts "it is a lorem"
when "lorem", "ipsum"
  puts "it is contains lorem"
when String
  puts "it is a string"
else
  puts "it is nothing"
end

# while Loop
number = 0
while number < 10
  number += 1
  puts number
end

# until Loop
number = 0
until number == 10
  number += 1
  puts number
end

# for Loop: in
for number in (1..10)
  puts number
end

for number in [1, 2, 3]
  puts number
end

# Modifier while and until
number = 0
number += 1 while number < 10
puts number

# break, next, redo Statement
# for number in (1..10)
#   puts number if number.even?
# end
for number in (1..10)
  next if number.odd?
  puts number
end

# Flip-Flop
for number in (1..10)
  puts number if number==2..number==8
end
