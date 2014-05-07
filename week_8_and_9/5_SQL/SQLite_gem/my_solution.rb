# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
    puts "AZ REPRESENTATIVES"
    az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
    az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
    puts "LONGEST SERVING REPRESENTATIVES"
    puts $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers(grade)
    puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
    puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade}")
end

def print_state_reps(state)
    puts "#{state} REPRESENTATIVES"
    reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")
    reps.each { |rep| puts rep }
end

def print_separator
    puts
    puts "------------------------------------------------------------------------------"
    puts
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(9)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)

print_separator
print_state_reps("NJ")

print_separator
print_state_reps("NY")

print_separator
print_state_reps("ME")

print_separator
print_state_reps("FL")

print_separator
print_state_reps("AK")

##### BONUS #######
#- Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# Using prepared statements and parameterized queries can help to stop attacks in their tracks.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?

#Sqlite3 gem allos us to work directly with databases, which is what $db is holiding.

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for
# your fellow students.
# If you're having trouble, find someone to pair on this explanation with you.

# execute run the query in the database and the line is saying "take every name form the database that satisfies this condition, which is that it is their years in congress must be bigger than the minimum years. Return a table with just the names".

#What parts of your strategy worked? What problems did you face?

# I found this challenge to be hard. I was finally able to figure out my error and boy does it feel good. Let's do this!

#What questions did you have while coding? What resources did you find to help you answer them?

# I took a look at stack overflow and checked out a few of my peers ideas.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I guess the thing that comes to mind with this challenge is the sqlite3 gem. How do I know if I am in it correctly? There are so many questions. lol

#Did you learn any new skills or tricks?

# Just got more practice using databases. Also, was introduced to the idea of Gem.

#How confident are you with each of the Learning Competencies?

# Not too confident. Need to practice more.

#Which parts of the challenge did you enjoy?

# Everything.

#Which parts of the challenge did you find tedious?

# Nothing.