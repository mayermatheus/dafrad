# http://ruby-doc.org/core-2.3.1/doc/syntax/assignment_rdoc.html

# variable, assignment
variable
variable = 10

# dynamic
variable = 10
variable = 'lorem'
variable = :lorem
puts variable

# strongly typed
variable = :lorem
variable + 10 # variable.to_s.to_i

# Local Variable (local_variables, Name snake_case)
variable = 10
variable = 10
variablE = 20
puts variable
other_variable = 10

# Constant
Variable = 10
VARIABLE = 20
# Variable = 20

# Instance Variables
@variable = 10

# Class Variables
@@varaible = 10

# Global Variables (global_variables)
$variable = 10

# Abbreviated Assignment (+, -, *, /, %, **, &, |, ^, <<, >>, ||, &&)
number = 10
number += 1
# variable = 0

variable ||= number
# if variable.empty?
#   variable
# else
#   number
puts variable

# Implicit Array Assignment
a = 1, 2, 3
puts a.inspect
# Multiple Assignment
a, b = 1, 2

# Array Decomposition
(a, b) = [1, 2]
a, (b, c) = 1, [2, 3]
a, (*c), *d = 1, [2, 3, 4], 5, 6
puts a
puts c.inspect
puts d.inspect

# keyword
# http://ruby-doc.org/core-2.3.1/doc/keywords_rdoc.html

# Pre-defined variables
# http://ruby-doc.org/core-2.3.1/doc/globals_rdoc.html#label-Pre-defined+variables

# Pre-defined global constants
# http://ruby-doc.org/core-2.3.1/doc/globals_rdoc.html#label-Pre-defined+global+constants
