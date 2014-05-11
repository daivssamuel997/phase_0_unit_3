$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 var bodyElement = $('body');
 var headElement = $('head');
 var image = $('img');
 var allElements = $('*');
 var allBodyElements = $('div', 'h1');
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $('h1').css({'color': 'green'});
 $('h1').css({'border-style': 'solid'});
 $('h1').css({'visibility': 'visible'});

 // Changing mascot
 $(".mascot").children("h1").html("<h1> Fence Lizards </h1>");

//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://i.stack.imgur.com/Ye1ED.jpg')
  });
 
$('img').on('click', function(e){
 	e.preventDefault()
  $(this).attr('src', 'http://scm-l3.technorati.com/12/12/13/73853/devbootcamp.png?t=20121213131231')
 });

//RELEASE 4 : Experiment on your own
 
 $('img').animate({'width': '25%'}, 'slow');
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
