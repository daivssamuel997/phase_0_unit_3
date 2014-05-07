# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
#1. First, need to define the method to bring in one argument.
#2. Next, will use recursion to check whether the number is part of the fib seq
#3. I will have a base case to rescue me from the recursive method.
#4. Return true if the num is part of the seq. False otherwise.


# 3. Initial Solution

=begin
def is_fibonacci?(num)
    
    # Base case
    return true if num == 0 || num == 1
    
    num == (is_fibonacci?(num - 1) + is_fibonacci?(num - 2)) ? true : false
end
=end

# 4. Refactored Solution

def is_fibonacci?(num)
    
    fib_array = [0, 1]
    
    while num > fib_array.last do # Runs until the num has been checked throughout the seq
        
        x, y = fib_array.pop(2) # Remove the elements of the array and put them into variables.
        
        fib_array.push(y, x + y) # Push the new elements into the array while implementing the rules of fibonacci.
        
    end
    
    
    # Check to see if the number is part of the fib seq
    num == fib_array.last ? true : false
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
    [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

def assert
    return "Assertion Failed!" unless yield
end

puts is_fibonacci?(5)

assert { is_fibonacci?(0) == true }

assert { is_fibonacci?(1) == true }

assert { is_fibonacci?(random_fibonacci) == true }

assert { is_fibonacci?(8670007398507948658051921) == true }

assert { is_fibonacci?(random_fibonacci+100) == false }

assert { is_fibonacci?(927372692193078999171) == false }

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# I thought that I could use recursion like in C to solve this problem, but was still running into some issues. I changed my idea and decided just to pop and push elements into an array. Worked like a charm.

#What questions did you have while coding? What resources did you find to help you answer them?

# None really. Checked the docs for the method last. Also, referred stack overflow for what the fibonacci seq is and recursion.

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
