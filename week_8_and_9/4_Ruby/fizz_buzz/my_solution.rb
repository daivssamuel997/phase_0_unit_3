# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
#1. First I will check to make sure that the array isn't empty. If so, return nil.
#2. Next, I will map all of the elements in the array brought in to a new array, but changing the numbers to the appropriate words according to if the numbers are divisible or not: 3 => 'Fizz', 5 => 'Buzz', 3 & 5 => 'FizzBuzz'
#3. I will then return the new array.


# 3. Initial Solution

=begin
def super_fizzbuzz(array)
    
    # Double check that the array isn't nil or empty.
    return nil if (array == nil || array.empty?)
    
    array2 = array.map { |element|
        if (element % 3 == 0 && element % 5 != 0)
            element = "Fizz"
            
        elsif (element % 3 != 0 && element % 5 == 0)
            element = "Buzz"
        
        elsif (element % 3 == 0 && element % 5 == 0)
            element = "FizzBuzz"
        else
            element = element
        end
    }
    return array2
end
=end

# 4. Refactored Solution

def super_fizzbuzz(array)
    
    # Double check that the array isn't nil or empty.
    return nil if (array == nil || array.empty?)
    
    array.map! { |element|
        if (element % 3 == 0 && element % 5 != 0)
            element = "Fizz"
            
            elsif (element % 3 != 0 && element % 5 == 0)
            element = "Buzz"
            
            elsif (element % 3 == 0 && element % 5 == 0)
            element = "FizzBuzz"
            else
            element = element
        end
    }
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
    raise "Assertion Failed!!" unless yield
end

array = []
assert { super_fizzbuzz(array) == nil }

array2 = [3, 3]
assert { super_fizzbuzz(array2) == ["Fizz", "Fizz"] }

array3 = [1, 2, 3, 4, 5, 15, 16]
assert { super_fizzbuzz(array3) == [1, 2, "Fizz", 4, "Buzz", "FizzBuzz", 16] }

assert { super_fizzbuzz.is_a? Class }

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

    #I spent a lot of time with the driver code and adding print statements to figure out what my code was doing. I didn't face too many problems.

#What questions did you have while coding? What resources did you find to help you answer them?

    # Not too many questions. Just referred to the docs a few times for references on method use. I first tried using each, collect, then map, and finally simplified it to map!.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

    # Not really having trouble with anything.

#Did you learn any new skills or tricks?

    # Not especially. Just got some more good practice.

#How confident are you with each of the Learning Competencies?

    # Very.

#Which parts of the challenge did you enjoy?

    # Everything. I have done this problem before in Java, so it was pretty familar to me.

#Which parts of the challenge did you find tedious?

    # None. 

