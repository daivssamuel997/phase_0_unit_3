# U3.W8-9: OO Basics: Student


# I worked on this challenge by myself.

# 2. Pseudocode
#1. Since the class is already defined, as well as the attr_accessor, I need to create an initialize method.
#2. Initialize will take two arguments, a name and an array of grades.
#3.


# 3. Initial Solution
=begin
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
      
      sum = 0
      
      @scores.each do |grade|
          sum += grade
      end
      
      avg = sum/@scores.length
  end
  
  def letter_grade
      if self.average >= 90
        return 'A'
      elsif self.average >= 80
        return 'B'
      elsif self.average >= 70
        return 'C'
      elsif self.average >= 60
        return 'D'
      else
        return 'F'
      end
  end
end

def linear_search(array, name)
    position = 0
    
    array.each do |person|
        if person.first_name == name
            return position
            else
            position += 1
        end
    end
    
    if position == array.length
        return -1
    end
end
=end


# 4. Refactored Solution

class Student
    attr_accessor :scores, :first_name
    
    def initialize(first_name, scores)   #Use named arguments!
        @first_name = first_name
        @scores = scores
    end
    
    def average
        return @scores.inject(:+)/@scores.length
    end
    
    def letter_grade
        if self.average >= 90
            return 'A'
            elsif self.average >= 80
            return 'B'
            elsif self.average >= 70
            return 'C'
            elsif self.average >= 60
            return 'D'
            else
            return 'F'
        end
    end
end

def linear_search(array, name)
  first_names = array.map { |person| person.first_name }
  
  if first_names.include? name
      return first_names.index(name)

  else
    return -1
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# Create an array of students
students = []

# Push the new people objects into the array
students.push(Student.new("Alex", [100,100,100,0,100]))
students.push(Student.new("Bill", [50,60,70,80,90]))
students.push(Student.new("Jamie", [88, 89, 72, 43, 97]))
students.push(Student.new("Sam", [90, 90, 90, 90, 96]))
students.push(Student.new("Andy", [55, 65, 75, 86, 96]))


# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1


def assert
    raise "Assertion failed!" unless yield
end

assert { students[0].first_name == "Alex" }
assert { students[0].scores.length == 5 }
assert { students[0].scores[0] == students[0].scores[4] }
assert { students[0].scores[3] == 0 }

assert { students[0].average == 80 }
assert { students[0].letter_grade == 'B' }

assert { linear_search(students, "Alex") == 0 }
assert { linear_search(students, "NOT A STUDENT") == -1 }


# 5. Reflection

#What parts of your strategy worked? What problems did you face?

# My ideas were mostly correct when dealing with the oo stuff. This was cool to really get a feel of how everything works together. I feel pretty confident with this.

#What questions did you have while coding? What resources did you find to help you answer them?

# It just took me a little bit to realize what the oo was looking for with the driver code. After realizing how to utilize the attr stuff and the methods, this was a piece of cake.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not having any problems with anything that I know of.

#Did you learn any new skills or tricks?

# Not really. Just practiced more.

#How confident are you with each of the Learning Competencies?

# Very.

#Which parts of the challenge did you enjoy?

# All of it. Very fun.

#Which parts of the challenge did you find tedious?

# Nothing.