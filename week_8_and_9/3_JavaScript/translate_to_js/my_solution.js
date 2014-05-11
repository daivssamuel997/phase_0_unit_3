// U3.W8-9: Challenge you're converting


// I worked on this challenge with Chris Aubuchon

// 2. Pseudocode
// 1. define a variable called guessing game.
// 2. define a function that is part of guessing game that returns 
// high if the guess is higher that the random number, low is it is lower,
// and correct if the number is the same. Only return correct if solved also = true
// 3. define a function called solved? that returns true if the guess = the answer 
// and false if the guess != answer.


// 3. Initial Solution

// var answer = Math.floor((Math.random() * 100) + 1);

// var guessing_game = {}
// guessing_game = {guess: function guess(guess) {
// 	if (guess > answer)
// 		console.log("High");
// 	if (guess < answer)
// 		console.log("Low");
// 	if (guess ==== answer)
// 		console.log("Correct");
// 	else
// 		console.log("Cannot compute");
// 	}

// 	guessing_game = {solved: function solved(guess) {
// 		return guess === answer? true : false;
// 	}
// }

// 4. Refactored Solution

var answer = Math.floor((Math.random() * 100) + 1);

var guessing_game = {
	guess: function(guess)
	{
		if (guess > answer)
			return "high"
		if (guess < answer)
			return "low"
		else
			return "correct"
	},

	solved: function(guess) {
		return guess === answer? true : false
	}
}

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (guessing_game.guess instanceof Function),
  "Guess should be a Function.\n",
  "1. "
)

assert(
	(solved? instance Function),
	"solved? should be a Function.\n",
	"2. "
)

guessing_game.guess(50);
guessing_game.solved(50);

guessing_game.guess(75);
guessing_game.solved(75);

guessing_game.guess(90);
guessing_game.solved(90);

// 5. Reflection 

// What parts of your strategy worked? What problems did you face?

// Chris and I really worked through each function one at a time to ensure that it was working properly. 

// What questions did you have while coding? What resources did you find to help you answer them?

// We didn't have too many questions while coding together. Things ran smoothly.

// What concepts are you having trouble with, or did you just figure something out? If so, what?

// None really. This challenge was super easy and fun. It was great.

// Did you learn any new skills or tricks?

// Not really. Just practiced. 

// How confident are you with each of the Learning Competencies?

// Very confident.

// Which parts of the challenge did you enjoy?

// Everything. Very fun challenge. 

// Which parts of the challenge did you find tedious?

// Nothing.