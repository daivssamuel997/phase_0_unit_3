# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

# def reverse_words(word)
# 	word = word.split(" ")
# 	word.map!{ |x| x.reverse }.join(" ")
# end


# 4. Refactored Solution

def reverse_words(word)

	word.gsub(/\w+/) { |match| match.reverse }

end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert 
	raise "Assertion failed!" unless yield
end

assert { reverse_words("") == "" }

assert { reverse_words("hello") == "olleh" }

assert { reverse_words("hello dog") == "olleh god" }

assert { reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }


# 5. Reflection 