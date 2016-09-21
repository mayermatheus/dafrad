# Fixnum
puts 10
puts 1234
puts 1_234
puts 1,234

puts 1234.class #=> Fixnum

puts (2**61).class
puts (2**61).object_id.to_s(32)
puts (2**61).object_id.to_s(32)

puts 10 % 2 == 0
puts 10.even?
puts 10.odd?
puts 10 == 0
puts 10.zero?

# Bignum
puts (2**62).class
puts (2**62).object_id.to_s(32)
puts (2**62).object_id.to_s(32)

# decimal format
puts 0d170
puts 0D170

# hexadecimal format
puts 0xaa
puts 0xAa
puts 0xAA
puts 0Xaa
puts 0XAa
puts 0XaA

# octal format
puts 0252
puts 0o252
puts 0O252

# binary format
puts 0b10101010
puts 0B10101010

# Float
puts 12.34
puts 1234e-2
puts 1.234E1
puts 12.34.class

puts 1.4-1.2 # IEEE 754

# BigDecimal (StdLib)
require 'bigdecimal'
puts BigDecimal.new("1.4")-BigDecimal.new("1.2")
