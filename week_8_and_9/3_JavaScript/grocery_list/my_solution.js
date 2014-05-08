// U3.W8-9: 


// I worked on this challenge by myself.
// User Stories
// As a user, I want to add and remove an item from the grocery
// As a user, I want to view all of the contents of the list
// As a user, I want to add together the total price of all the items

// 2. Pseudocode
// 1. First, need to define a var gro_list
		//Items will have the properties: Name and price
// 2. I defined an array of items to go along with an array of their prices
// similar to the students and grades from the gradebook challenge. 
// 3. Remove items from the list. Need a function to iterate through
// list until it finds that item. Then remove it. 
// 4. View all of the contents of the list. Will need to iterate through
// the list and print to the console the names of the items with their price.
// 5. Have a function that adds together all of the prices and print it to the console.

// 3. Initial Solution
// var groceryList = {
// 	addItem: function(name, price)
// 	{
// 		items.push(name);
// 		prices.push(price);
// 	},

// 	removeItem: function(name)
// 	{
// 		var i;

// 		for (i = 0; i < items.length; i++)
// 		{
// 			if (name === items[i])
// 			{
// 				//splice(index of item, number of items to remove)
// 				items.splice(i, 1);
// 				prices.splice(i, 1);
// 			} // end if
// 		}// end for loop
// 	},// end remove

// 	viewContents: function()
// 	{
// 		var i, sum = 0;

// 		console.log("\nGrocery List");
// 		console.log("_______________________________\n");


// 		for (i = 0; i < items.length; i++)
// 		{
// 			console.log(items[i] + " - $" + prices[i]);
// 			sum += prices[i];
// 		}

// 		console.log("_______________________________\n");
// 		console.log("Total:  $" + sum.toFixed(2));

// 	}// end view

// };


// 4. Refactored Solution

var groceryList = {
	addItem: function(name, price)
	{
		items.push(name);
		prices.push(price);
	},

	removeItem: function(name)
	{
		var i;

		for (i = 0; i < items.length; i++)
		{
			if (name === items[i])
			{
				//splice(index of item, number of items to remove)
				items.splice(i, 1);
				prices.splice(i, 1);
			} // end if
		}// end for loop
	},// end remove

	viewContents: function()
	{
		var i, sum = 0;

		console.log("\nGrocery List");
		console.log("_______________________________\n");


		for (i = 0; i < items.length; i++)
		{
			console.log(items[i] + " - $" + prices[i]);
			sum += prices[i];
		}

		console.log("_______________________________\n");
		console.log("Total:  $" + sum.toFixed(2));

	},// end view

	addPrices: function(prices)
	{
		var i, sum = 0; 

		for (i = 0; i < prices.length; i++)
			sum += prices[i];

		console.log("Total price comes to...$" + sum.toFixed(2));
	}
};





// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function assert(test, message, number)
{
	if(test === true)
		console.log(number + " " + message + "true.\n");
	else
		throw ("Stop! Something is wrong! " + number + " " + message + " is false\n");
}

items = ["milk", "butter", "salt"];
prices = [3.61, 2.59, 1.59];

groceryList.addItem("Pizza", 5.01);

assert(
	(groceryList.addItem instanceof Function),
	"Should be a function\n",
	"1.")

groceryList.removeItem("milk");

assert(
	(groceryList.removeItem instanceof Function),
	"Should be a function\n",
	"2.")

groceryList.viewContents();

groceryList.addPrices(prices);

assert(
	(groceryList.addPrices instanceof Function),
	"Should be a function\n",
	"3.")

// 5. Reflection 

// What parts of your strategy worked? What problems did you face?

// I really worked through each function one at a time to ensure that it was working properly. 
// I ran into some simple problems that through driver code I was able to figure out. 

// What questions did you have while coding? What resources did you find to help you answer them?

// I had some questions about the differences between javascript syntax and ruby syntax. 
// I had to research some on the internet.

// What concepts are you having trouble with, or did you just figure something out? If so, what?

// None really. This challenge was super fun. I really enjoyed it. 

// Did you learn any new skills or tricks?

// Yes. I learned how to round in javascript, as well as got more practice. 

// How confident are you with each of the Learning Competencies?

// Very confident.

// Which parts of the challenge did you enjoy?

// Everything. Very fun challenge. 

// Which parts of the challenge did you find tedious?

// Nothing.