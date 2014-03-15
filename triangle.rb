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


  handle_bad_triangle(a, b, c)

  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end

end

def handle_bad_triangle(a, b, c)
  if a == 0 || b == 0 || c == 0
    raise TriangleError, "All sides must have a value"
  elsif a < 0 || b < 0 || c < 0
    raise TriangleError, "All sides must have a positive value"
  elsif a + b <= c
    raise TriangleError, "Triangle inequality : Triangle inequality"
  elsif b + c <= a
    raise TriangleError, "Triangle inequality : Triangle inequality"
  elsif a + c <= b
    raise TriangleError, "Triangle inequality : Triangle inequality"
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
