/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// function average(array_scores)
// {
//   var i, sum = 0, avg = 0;

//   for (i = 0; i < array_scores.length; i++)
//       sum += array_scores[i];

//   avg = (sum/array_scores.length);

//   return avg;
// }


// tester to make sure that I found the avg correctly
// average([1,2,3]);

//function gradebook(name, scores)
//{
  //this.name = name;
  //this.scores = scores;
//}

// var gradebook = {
//   Joseph: {
//     testScores: scores[0]
//   },

//   Susan: {
//     testScores: scores[1]
//   },

//   William: {
//     testScores: scores[2]
//   },

//   Elizabeth: {
//     testScores: scores[3]
//   },

//   addScore: function(name, score)
//   {
//     var i; 

//     for (i = 0; i < students.length; i++)
//       if (name === students[i])
//         return scores[i].push(score);
//   },

//   getAverage: function(name)
//   {
//     var i;

//     for (i = 0; i < students.length; i++)
//       if (name === students[i])
//         return average(scores[i]);
//   }
// };

// var joseph = new gradebook(students[0], scores[0]);
// var susan = new gradebook(students[1], scores[1]);
// var william = new gradebook(students[2], scores[2]);
// var elizabeth = new gradebook(students[3], scores[3]);

// var people = new Array(joseph, susan, william, elizabeth);

// function printgradeBook(people)
// {
//   var i;

//   for (i = 0; i < people.length; i++)
//   {
//       console.log(people[i].name + " - " + people[i].scores);
//   }
// }

// printgradeBook(people);



// __________________________________________
// Refactored Solution

// I went through a ton of refactoring when I was writing the 
// initial solution. This was an awesome experience kind of 
// relearning everything, since it had been awhile since I 
// had done it.


function average(array_scores)
{
  var i, sum = 0, avg = 0;

  for (i = 0; i < array_scores.length; i++)
      sum += array_scores[i];

  avg = (sum/array_scores.length);

  return avg;
}

var gradebook = {
  Joseph: {
    testScores: scores[0]
  },

  Susan: {
    testScores: scores[1]
  },

  William: {
    testScores: scores[2]
  },

  Elizabeth: {
    testScores: scores[3]
  },

  addScore: function(name, score)
  {
    var i; 

    for (i = 0; i < students.length; i++)
      if (name === students[i])
        return scores[i].push(score);
  },

  getAverage: function(name)
  {
    var i;

    for (i = 0; i < students.length; i++)
      if (name === students[i])
        return average(scores[i]);
  }
};

// __________________________________________
// Reflect
// What parts of your strategy worked? What problems did you face?

// Well, when writing the first function, I ran into very little problems.
// My problems came when I tried doing the gradebook. I ran into a lot
// of syntax errors from not programming in javascript in awhile.

// What questions did you have while coding? What resources did you find to help you answer them?

// I had some syntax questions. I referred to my notes and previous challenges.

// What concepts are you having trouble with, or did you just figure something out? If so, what?

// I wasn't really having any problems with concepts. Just needed 
// to refresh my memory. 

// Did you learn any new skills or tricks?

// Not really. Just got some great practice. 

// How confident are you with each of the Learning Competencies?

// I am very confident. Really felt like I knew what was going on. 

// Which parts of the challenge did you enjoy?

// Everything.

// Which parts of the challenge did you find tedious?

// Nothing. 

// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)