# http://ruby-doc.org/core-2.3.1/doc/syntax/modules_and_classes_rdoc.html
# https://learnxinyminutes.com/docs/ruby/

## Module ##
module ModuleExample
  def foo
    'foo'
  end
end

class Person
  include ModuleExample
end

class Book
  extend ModuleExample
end

Person.foo     # => NoMethodError: undefined method `foo' for Person:Class
Person.new.foo # => 'foo'
Book.foo       # => 'foo'
Book.new.foo   # => NoMethodError: undefined method `foo'

module ConcernExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      'bar'
    end
  end

  module InstanceMethods
    def qux
      'qux'
    end
  end
end

class Something
  include ConcernExample
end

Something.bar     # => 'bar'
Something.qux     # => NoMethodError: undefined method `qux'
Something.new.bar # => NoMethodError: undefined method `bar'
Something.new.qux # => 'qux'

## Class ##
class Student
  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

puts Object.new.class
puts Student.new.class

class Student
  attr_reader :id, :email
  attr_writer :email
  attr_accessor :name, :course #=> attr_reader, attr_writer

  INSTITUITION = "IFPB"
  @@student_id = 0

  def initialize(name, email='', course="TSI")
    @name = name
    @email = email
    @id = Student.next_id
    @course = course
  end

  def self.next_id
    @@student_id = @@student_id.next
    @@student_id
  end

  def Student.get_student_id
    @@student_id
  end

  class << self
    def get_student_id_s
      "id: #{@@student_id}"
    end

    def get_student_id_h
      {id: @@student_id}
    end
  end

  def to_s
    "Id:#{@id}, Nome: #{@name}, E-mail: #{@email},"+
    " Couse: #{@course}, Inst: #{INSTITUITION}"
  end

  alias :to_string :to_s

  def inspect
    ivs = instance_variables.map{|b|
      "#{b}:#{self.instance_variable_get(b).inspect}"
    }.join(", ")
    "<#{self.class}:#{object_id()} #{ivs}>"
  end

  def call_private_good
    private_test
  end

  def call_private_bad
    self.private_test #=> NoMethodError
  end

  # private
  def private_test
    'private'
  end
  private :private_test

  protected
  def protected_test
    'protected'
  end
  # protected :protected_test
end

sicrano = Student.new "sicrano"
fulano = Student.new "fulano"

# puts Student.new("beltrano").private_test #=> NoMethodError
# puts Student.new("beltrano").protected_test #=> NoMethodError
puts Student.new("beltrano").call_private_good
# puts Student.new("beltrano").call_private_bad

# instance_variables (Object)
puts sicrano.instance_variables.inspect

# puts sicrano.course #=> NoMethodError
# puts sicrano.@course #=> syntax error

puts sicrano.id

puts sicrano.name
sicrano.name = "fulano"
puts sicrano.name

sicrano.email = "fulano@email"
puts sicrano.email

puts sicrano.course

puts sicrano #=>
puts sicrano.to_string #=>
puts sicrano.inspect #=>

# número de métodos
puts sicrano.methods.size
puts Student.methods.size

# singleton_methods
def sicrano.hello
  "Hello #{@name}"
end
puts sicrano.hello
puts sicrano.singleton_methods.inspect
# puts fulano.hello #=> NoMethodError
puts fulano.singleton_methods.inspect

class Student
  def hello
    "Hello #{@name}!"
  end

  def Student.hello
    "Hello #{@name}!"
  end
end
puts sicrano.hello
puts fulano.hello
puts Student.hello

# class_methods (Module)
# puts sicrano.student_id #=> NoMethodError
# puts Student.student_id #=> NoMethodError
puts Student.get_student_id
puts Student.get_student_id_s
puts Student.get_student_id_h.inspect

class Student
  # def Student.count_student
  #   @@student_id
  # end

  # def self.count_student
  #   @@student_id
  # end

  def count_student
    @@student_id
  end
end

def Student.count_student
  @@student_id
end

puts Student.count_student
puts sicrano.count_student

# class constants
puts Student::INSTITUITION
# puts Student.INSTITUITION #=> NoMethodError
# puts sicrano.INSTITUITION #=> NoMethodError
class Student
  def self.instituition
    INSTITUITION
  end

  def instituition
    INSTITUITION
  end
end
puts Student.instituition #=>"IFPB"
puts sicrano.instituition #=>"IFPB"

# comparation
puts (sicrano != fulano).inspect

# inheritance
class Undergraduate < Student
  attr_accessor :grade

  def initialize(name, email='', course="TSI")
    super(name, email, course)
    @grade = 0
  end

  # overriding
  def inspect
    ivs = instance_variables.map{|b|
      "#{b}:#{self.instance_variable_get(b).inspect}"
    }.join("\n\t")
    "<\n\t#{self.class}:#{object_id()}\n\t#{ivs}\n>"
  end

  def call_protected_good
    protected_test
  end
end

fulano = Undergraduate.new("Fulano", "fulano@email", "TSI")
puts fulano.name
puts fulano.grade
puts fulano.inspect

# puts Undergraduate.new("beltrano").protected_test #=> NoMethodError
puts Undergraduate.new("beltrano").call_protected_good

puts Undergraduate.superclass
puts Undergraduate.ancestors.to_a.inspect

puts fulano.is_a?(Undergraduate)
puts fulano.is_a?(Student)

puts fulano.kind_of?(Undergraduate)
puts fulano.kind_of?(Student)

puts fulano.instance_of?(Undergraduate)
puts fulano.instance_of?(Student)


class Human

  # A class variable. It is shared by all instances of this class.
  @@species = 'H. sapiens'

  # Basic initializer
  def initialize(name, age = 0)
    # Assign the argument to the "name" instance variable for the instance
    @name = name
    # If no age given, we will fall back to the default in the arguments list.
    @age = age
  end

  # Basic setter method
  def name=(name)
    @name = name
  end

  # Basic getter method
  def name
    @name
  end

  # The above functionality can be encapsulated using the attr_accessor method as follows
  attr_accessor :name

  # Getter/setter methods can also be created individually like this
  attr_reader :name
  attr_writer :name

  # A class method uses self to distinguish from instance methods.
  # It can only be called on the class, not an instance.
  def self.say(msg)
    puts msg
  end

  def species
    @@species
  end
end


# Instantiate a class
jim = Human.new('Jim Halpert')

dwight = Human.new('Dwight K. Schrute')

# Let's call a couple of methods
jim.species #=> "H. sapiens"
jim.name #=> "Jim Halpert"
jim.name = "Jim Halpert II" #=> "Jim Halpert II"
jim.name #=> "Jim Halpert II"
dwight.species #=> "H. sapiens"
dwight.name #=> "Dwight K. Schrute"

# Call the class method
Human.say('Hi') #=> "Hi"

class Human
  @@foo = 0

  def self.foo
    @@foo
  end

  def self.foo=(value)
    @@foo = value
  end
end

# derived class
class Worker < Human
end

Human.foo # 0
Worker.foo # 0

Human.foo = 2 # 2
Worker.foo # 2

# Class instance variable is not shared by the class's descendants.

class Human
  @bar = 0

  def self.bar
    @bar
  end

  def self.bar=(value)
    @bar = value
  end
end

class Doctor < Human
end

Human.bar # 0
Doctor.bar # nil
