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
# 
# Error class used in part 2.  No need to change this code.

class TriangleError < StandardError
end

def triangle(a, b, c)
  # WRITE THIS CODE
  array_containing_lengths = [a, b, c]
  array_containing_lengths.sort!
  a, b, c = array_containing_lengths
  if a + b <= c
    raise TriangleError, "TriangleError"
  end
  array_containing_lengths.each {|x| raise TriangleError.new if x < 1}
  case array_containing_lengths.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  else
    :scalene
end
end

