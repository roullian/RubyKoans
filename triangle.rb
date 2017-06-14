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

def raise_if_inferior_or_equal_to_0(a)
    if a <= 0
	raise TriangleError
    end
end

def raise_if_first_value_isnt_inferior_to_other_values_added(a, b, c)
    if a >= b + c
	raise TriangleError
    end
end


def raise_if_not_a_triangle(a, b, c)
    raise_if_inferior_or_equal_to_0(a)
    raise_if_inferior_or_equal_to_0(b)
    raise_if_inferior_or_equal_to_0(c)
    raise_if_first_value_isnt_inferior_to_other_values_added(a, b, c)
    raise_if_first_value_isnt_inferior_to_other_values_added(b, a, c)
    raise_if_first_value_isnt_inferior_to_other_values_added(c, a, b)
end

def triangle(a, b, c)

    raise_if_not_a_triangle(a, b, c)


    if a == b && b == c
	:equilateral
    else
	if a != b && b != c && a != c
	    :scalene
	else
	    :isosceles
	end
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
