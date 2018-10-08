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

  arr = [a, b, c].sort
  raise TriangleError, 'A triangle should not have any sides of length 0.' if arr[0] == 0
  raise TriangleError, 'Negative length doesn\'t make sense.' if arr[0] < 0
  raise TriangleError, 'Any two sides of a triangle should add up to more than the third side.' if arr[0] + arr[1] <= arr[2]

  if a == b && b == c
    :equilateral
  elsif
    a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
