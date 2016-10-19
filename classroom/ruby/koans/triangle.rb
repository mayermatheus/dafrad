# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  type = []
  type[1] = :equilateral
  type[2] = :isosceles
  type[3] = :scalene

  sides = [a, b, c].sort

  raise TriangleError if sides.any? {|n| n.zero?}
  raise TriangleError if sides.any? {|n| n.negative?}
  raise TriangleError if sides[0]+sides[1] <= sides[2]

  sides.uniq!
  type[sides.length]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
