# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	@width*@height
  end

  def perimeter
  	((@width*2) + (@height*2))
  end

  def diagonal
  	Math.sqrt(@width*@width + @height*@height)
  end

  def square?
  	@width == @height? true : false
  end

end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert 
	raise "Assertion failed!" unless yield
end

rec = Rectangle.new(10,20)

square = Rectangle.new(20,20)

assert { Rectangle.method_defined?(:area) == true }

assert { rec.area == 200 }

assert { square.area == 400 }

assert { rec.perimeter == 60 }

assert { square.perimeter == 80 }

assert { rec.diagonal == 22.360679774997898 }

assert { rec.square? == false }

assert { square.square? == true }


# 5. Reflection 