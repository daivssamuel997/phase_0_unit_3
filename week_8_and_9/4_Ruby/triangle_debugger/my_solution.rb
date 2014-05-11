# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself.


# 1. Original Solution
=begin
def valid_triangle?(a, b, c)
  sum = 0
  if a != 0 && b != 0 && c != 0
      if a >= b
          largest = a
          sum += b
      else largest = b
        sum += a
      end
      
      if c > largest
          sum += largest
          largest = c
      else
        sum += c
      end
  
     if sum > largest
      return true
     else
        return false
     end
  else
    return false
  end
end
=end

# 2. Answer the question for each bug

# --- Bug 1 --- Too many agruments
# * what is the exact description of the error? valid_triangle? expects 3 arguments. Basically, we are sending it four arugments when it is expecting three.
# * what is the exact line number the error is appearing? line 9
# * before you fix the bug, what do you think is causing the error? We are sending the method four arguments when it is looking for three. I need to take out the argument 'sum'.

# --- Bug 2 ---
# * what is the exact description of the error? On line 11, we have defined the def of a true triangle incorrectly.
# * what is the exact line number the error is appearing? line 11
# * before you fix the bug, what do you think is causing the error? It isn't checking the variables correctly because on line 11, it needs to be && instead of ||.

# --- Bug 3 ---
# * what is the exact description of the error? rb:13:in `valid_triangle?': undefined method `+' for nil:NilClass (NoMethodError)
# * what is the exact line number the error is appearing? line 13
# * before you fix the bug, what do you think is causing the error? I believe the error is occuring because we are saying take sum and add 'a' and sum together to get a new some, but we never defined sum to a value. So it can't figure out what to add to 'a'. So we need to declare sum to 0.

# -- Bug 4 --
# * what is the exact description of the error? There are quotes already the true and false returns, therefore, we are sending it back as a string.
# * what is the exact line number the error is appearing? line 27, 29, 32
# * before you fix the bug, what do you think is causing the error? We are checking to see if the valid_triangle?(0, 1, 2) == false, but what it is comparing before the fix is "true" == true, which is false.


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
    # Your code goes here!
    # make sure that it a, b, or c isn't 0 or the triangle isn't impossible.
    if a + b > c && a + c > b && b + c > a
        return true
    
    else
        return false
    end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
    raise "Assertion failed!" unless yield
end

assert { method(:valid_triangle?).arity == 3 }

length = rand(0.01..100.0)
assert { valid_triangle?(length, length, length) == true }

assert { valid_triangle?(0, 1, 2) == false }

# 5. Reflection

#What parts of your strategy worked? What problems did you face?

# I didn't really face too many issues. I was able to see the mistakes pretty quickly and wasn't stumped too much.

#What questions did you have while coding? What resources did you find to help you answer them?

# I didn't really have too many questions. I found this challenge to be easy to understand.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not having too many problems with these concepts. It all worked pretty well.

#Did you learn any new skills or tricks?

# Not here. Just practiced.

#How confident are you with each of the Learning Competencies?

# Very confident.

#Which parts of the challenge did you enjoy?

# Everything. It was a very fun challenge.

#Which parts of the challenge did you find tedious?

# Nothing. 