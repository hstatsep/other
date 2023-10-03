# Snippets from Students

## SEP10

---

### Xinyan

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-xinyanh4701/blob/main/README.md)

The final component I used was the card. The only challenge I was facing is the cards weren't responsive at first. The cards were only getting smaller and smaller until the point the cards look like mozarella sticks.  
Here the code without the responsive part:
```html
<div class="card" style="width: 18rem;">
    <img src="https://upload.wikimedia.org/wikipedia/commons/a/af/Clementine_orange.jpg" class="card-img-top" alt="lorem ipsum">
    <div class="card-body">
        <h5 class="card-title">Lorem Ipsum</h5>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
</div>
```
The Bootstrap website tells me that you can use `card-group` to solve the problem. I only wrote `<div class="card-group">` which created a problem. The cards were also doing the same thing as before. I started writing `<div class="row">` inside the `<div class="card-group">` because from what I learned prior to this assignment, rows are like wrappers for columns. Rows gives columns the spaces they need. Down below is the code I wrote to tinker with the `<div class="row">`.
The code to make the cards responsive:
```html
<div class="card-group">
  <div class="row">
    <div class="card" style="width: 18rem;">
      <img src="https://upload.wikimedia.org/wikipedia/commons/a/af/Clementine_orange.jpg" class="card-img-top" alt="lorem ipsum">
      <div class="card-body">
        <h5 class="card-title">Lorem Ipsum</h5>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      </div>
    </div>
<!-- more card content -->
  </div>
</div>
```

---

### Aron

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-aronl9810/blob/main/README.md)

Now with Grids and Containers. They are actually combined together. Lets start by talking about the bootstrap grid system. The bootstrap grid system is a bit complicated but think of it like this. It is a multiplication table and you can choose which position you want it to be. Now the grid system utilizes columns which store the HTML code. **Another thing to note about this: it will not work if you don't have this code in a container so be sure to use the container.** Lets now make a example.
```html
<div class = "container">
    <div class = "rows">
        <div class = "col">
            <p>Colnum 1</p>
        </div>
        <div class = "col">
            <p>Colnum 2</p>
        </div>
        <div class = "col">
            <p>Colnum 3</p>
        </div>
    </div>
</div>
```

---

### Wendy

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-wendyb8188/blob/main/README.md)

* Obstacle 1- My objective was to learn how grid systems work. During this lesson, I was instructed to create a webpage using the grid system on my IDE. The instructions required me to use: container(s), container-fluid(s), row(s), col(s), etc. All was good until I couldn't get my website to look the way I wanted it to on large devices. One way I tried tackling this problem was by placing `col-lg-3` in the class's next to `col-md-6`, however for some reason it wasn't working. I tried moving things around, but I just couldn't understand what I had done wrong... 
My code initially looked like this:
```html
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <h2>McDonald's</h2>
                <p>Egg McMuffin</p>
                <p>Big Mac</p>
                <p>Happy Meal</p>
                <p>French Fries</p>
            </div> <!--./col-->
            <div class="col-md-6 col-lg-3">
                <h2>Wendy's</h2>
                <p>Baconator</p>
                <p>Chocolate Frosty</p>
                <p>Dave's Double</p>
                <p>Spicy Chicken Nuggets</p>
            </div> <!--./col-->
        </div> <!--./row--> 
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <h2>Taco Bell</h2>
                <p>Crunchwrap Supreme</p>
                <p>Chicken Quesadilla</p>
                <p>Nacho Fries</p>
                <p>Cheesy Gordita Crunch</p>
            </div> <!--./col-->
            <div class="col-md-6 col-lg-3">
                <h2>Subway</h2>
                <p>Spicy Italian</p>
                <p>Buffalo Chicken</p>
                <p>Italian B.M.T.</p>
                <p>Meatball Marinara</p>
            </div> <!--./col-->
        </div> <!--./row--> 
    </div> <!--./container-->            
</div> <!--./container-fluid--> 
```

So... I went to tutoring to get help from my SEP teacher (Mr. Mueller)! After clearing things out, I came to realize that what I had done wrong: I had added two rows which meant that my columns could never be next to each other (the way I wanted it) because there could only be two columns in each row! The solution to this was taking away the second row in order for the four columns to be next to each other in one row. I also took away the `.container-fluid` to see if my code would work properly and it did!

My final code looks like this (Note: I also went ahead and tested out other classes I learned by watching a youtube video on Bootstrap):
```html
<div class="container-fluid">
    <div class="row my-5 justify-content-between">
        <div class="col-md-6 col-lg-3 border border-dark p-5 text-center">
            <h2>McDonald's</h2>
            <p>Egg McMuffin</p>
            <p>Big Mac</p>
            <p>Happy Meal</p>
            <p>French Fries</p>
        </div> <!--./col-->
        <div class="col-md-6 col-lg-3 border border-dark p-5 text-center">
            <h2>Wendy's</h2>
            <p>Baconator</p>
            <p>Chocolate Frosty</p>
            <p>Dave's Double</p>
            <p>Spicy Chicken Nuggets</p>
        </div> <!--./col-->
        <div class="col-md-6 col-lg-3 border border-dark p-5 text-center">
            <h2>Taco Bell</h2>
            <p>Crunchwrap Supreme</p>
            <p>Chicken Quesadilla</p>
            <p>Nacho Fries</p>
            <p>Cheesy Gordita Crunch</p>
        </div> <!--./col-->
        <div class="col-md-6 col-lg-3 border border-dark p-5 text-center">
            <h2>Subway</h2>
            <p>Spicy Italian</p>
            <p>Buffalo Chicken</p>
            <p>Italian B.M.T.</p>
            <p>Meatball Marinara</p>
        </div> <!--./col-->
    </div> <!--./row--> 
</div> <!--./container-fluid--> 
```

---

### Chanry

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-chanryc9471/blob/main/README.md)

After I finished with alerts, I did cards. I added images to the cards, with some text about cats. When I did cards, I encountered a problem. The left and right cards were right on the edge of the screen, and there were no margins. I tried using `.container` so that there would be margins added to the left and right side, but it didn't work. I looked at the classes that were used, and saw `.g-4`. I read the documentation and found out that they were gutters. I decided to changed the 4 to a 3 to see what it would do, and saw that the spaces between the cards were smaller, but the cards were still on the edges of the screen. After further research, I decided to add my own class `.w-custom` and added the css:
```css
.w-custom {
    width: 95%;
    margin-left: auto;
    margin-right: auto;
}
```
The css ended up working, and there were margins on the left and right side of the viewport.


---

### Jasmine

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-jasmine8510/blob/main/README.md)

After learning more about the grid system and how to format my code things became a lot easier. The only bump in the road I had was with the `collapse`. I first gave it the class of `.col-md-6` which would make that single element or component take up 6 columns. However the collapse stayed shifted to the left side when I wanted it in the middle. After this I learned that you can also assign special properties to the row as well. The property was found in the bootstrap website, it was apart of many different positioning examples. I changed the `row` class to `.row justify-content-center` to make it centered. However even with this it was still slightly shifted to the left. It was suggested that I changed the width of the component in order to get it to shift to the middle. When the width's value was at 100% the component was finally centered. The code for it looks like:

```html
<div class="row justify-content-center">
    <div class="col-md-6">
        <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-                 controls="collapseWidthExample">
            By the way...
        </button>
        <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample">
                <div class="card card-body" style="width: 100%;">
                    Don't forget a drink. Maybe some coffee, tea, or even orange juice.... or basic water... that works too.
                </div>
            </div>
        </div>
    </div>
</div>
```

---

### Val

[private URL](https://github.com/hstatsep-students/bootstrap-writeup-paigem1972/blob/main/README.md)

The third component was the list group, which similarly to badges, I had no difficulty with. Although I didn't have trouble with the code itself, I made the mistake of writing in the JS area of the file, so my code didn't work. Thankfully my classmate pointed this out to me and helped me correct my error. I am now more mindful of where I'm typing my code, which will help me in future projects.

[...more text here...]

Some of my biggest takeaways from learning about Bootstrap are to ask for help and that comments are extremely helpful. Many of my errors were pointed out by classmates and friends, which showed me that having a different perspective on something can be very useful. Comments were never really a feature I used until this unit, but I'm glad I began to utilize them since organizing code is significantly easier now. 


---

## SEP11

---

### Sanila

[private URL](https://github.com/hstatsep-students/dom-writeup-sanilac6459/blob/main/README.md)

Because this is a _**random**_ color generator, we would need to use `Math.random()` and go through each element of the color array our teacher provided. First, we worked on getting the background color to change. This is what me and my partner tried:
```js
var colors = ["green", "red", "rgba(133,122,200)", "#f15025"]; // all colors in the array
// when user clicks button
document.querySelector("button").addEventListener("click", function(){
    getRandomColor(); // proceede this function
});
// to get random color from array
// [function redacted]
```
When we run it, it worked! Okay, we're making progress. Now we just need to get the text display the correct color accordingly to the background. Looking back at the HTML elements our teacher provided, the text that shows the color is surrounded by a span class named color. Since we already made a function that generates the random color background, we decided to make the text equal to the function by grabbing the span class with `document.querySelector` and display the color with `.innerHTML` like this:

```js
var colors = ["green", "red", "rgba(133,122,200)", "#f15025"]; // all colors in the array
// when user clicks button
document.querySelector("button").addEventListener("click", function(){
    getRandomColor(); // proceede this function
    document.querySelector(".color").innerHTML = getRandomColor(); // ADDED CODE
});
// to get random color from array
// [function redacted]
```
However, when we run it, the text displays the background color undefined. My partner suggested we put the line of code `document.querySelector(".color").innerHTML = getRandomColor();` inside the function and change `getRandomColor();` to `colors[Math.floor(Math.random() * colors.length)];` since that returns the random color.
```js
var colors = ["green", "red", "rgba(133,122,200)", "#f15025"]; // all colors in the array
// when user clicks button
document.querySelector("button").addEventListener("click", function(){
    getRandomColor(); // proceede this function
});
// to get random color from array
// [function redacted]
}
```
This time when we run it, the text no longer displays undefined, but it doesn't match the color of the background. For example, when the background is green, the text is supposed to display green. But instead, it's displaying either red, rgba(133,122,200), or #f15025. It was confusing and frustrating of why the text isn't displaying the correct color. We assigned that line of code to the background color and it worked perfectly so we figured it worked for the same for the text. 

After brainstorming for a while, I decided to try something. So the line of code where it says `colors[Math.floor(Math.random() * colors.length)]` would be store in a variable called `getRandomColor` and have the background color equal to `colors[getRandomColor]`. This code would take the colors array and randomize the elements inside using the `getRandomColor` variable. After discussing this with my partner, we rewrote our code and came up with this:

[...more code here...]

---

### Jan

[private URL](https://github.com/hstatsep-students/functions-writeup-jancarloa0524/blob/main/README.md)

### Context

In this part of the SEP11 Javascript cousre, we are learning about functions and how to use them in our web applications.
Functions are basically like reasuable sets of code. You can call a function at any point in your program in order to use a feauture that you find a user will often need to use over and over. The following is a great example, of pretty much everything I learned, and even replicates, but simplifies, the task that I took on. 

``` javascript
ask();

function ask(){
  var question = prompt('Wanna multiply by 2? Type "y" if yes')
  if (question == "y") {
    askNumber();
  } else {
    document.write("That's cool! Cya.")
  }
}

function askNumber(firstNumVar){
  firstNumVar = prompt("Enter a number")
  printTotal(firstNumVar)
}

function printTotal(secondNumVar){
  document.write(multiply(secondNumVar))
}

function multiply(thirdNumVar){
  return parseInt(thirdNumVar) * 2
}
```

In the above example, there is a bit to unpack here, but it proves a lot of what it is I learned. 

__The Important Concepts I learned were:__

* Understand that a function can be called anywhere in the code, as long as the function is defined. Functions can be called before they are declared, (`ask();`), and even in the middle of declaring a function.
* When creating a function, variables can go into the parenthesis.
* Variables within functions are known as local functions. This is shown by the fact that for each function, that uses a number variable, I order them. In order to make the process easy to understand, I ordered the functions as well. 
    1. In `askNumber(firstNumVar)`, I declare the variable `firstNumVar`. This is a local function, so when I call the `printTotal(firstNumVar)`, whatever the value of `firstNumVar` is, it will equal to `secondNumvar`.
    2. In `printTotal(secondNumVar)`, I declare the variable `secondNumvar`. This is also a local function, and because we already declared that, `firstNumVar = secondNumVar`, when it calls `multiply(secondNumVar)`, the same thing will happen when we declare the final function, `multiply(thirdNumVar)`.
    3. When we declare `multiply(thirdNumVar)`, we are declaring that `secondNumVar = thirdNumVar`, which we then multiply by 2. This is what is used in the `document.write` for `printTotal()`. But, why does `firstNumVar = secondNumvar = thirdNumVar`? It's because, each time we call a function, we are essentially substitutiing the given value we have, for the variable being called. So if we are given a value of 2, `firstNumVar = secondNumvar = thirdNumVar = 2`, which will give us an answer of 4. 
* In order for local functions to have any effect outside of its function, you need to use `return`. This essentially allows a function to return a value, in this case, the `parseInt(number) * 2` is being returned when called by `printTotal(number)` within the `askNumber(number)` function. (Just to be clear, `parseInt` just turns the numbers in a string, into an integer you can use.)
* Although not specific to functions, `if(){} else {}` statements are a really useful tool I learn. You can see it used here when I ask the user if they want to multiply by 2, if they type "y", then it proceeds to the multiplication. If not, the program says "That's cool! Cya."

#### Challenge

At first, I had a difficult time understanding the **scope** of parameters within functions. You'll notice that `firstNumVar` and `secondNumVar` are only used within their respective functions. That is because they are **local** variables. When I first tried coding this, I tried using `firstNumVar` in `printTotal()` but was getting the error `firstNumVar is not defined`. I asked about it on the `#js` channel and Rajab explained that **local** variables are only viewable within the function in which they are defined. In order to use them elsewhere, I would have to make it global. Here are some examples:

##### Global
```js
var firstNumVar; // global variable

function askNumber(){
  // firstNumVar; // usable here
}

function printTotal(){
  // firstNumVar; // also usable here
}
```

##### Local
```js
function askNumber(){
  var firstNumVar; // local variable
}

function printTotal(){
  // firstNumVar; // NOT usable here, would give error
}
```

#### Takeaways

* Functions are a super useful tool when creating a web application, because of their ability to be reused by the programmer. You can define them once, then reuse them as many times as you want.
* Parameters make functions more unique because the function can do different things. You do this by passing different values into the arguments when calling the function.
* Variables should be global if you're going to use them in multiple functions, but local if you're only going to use them in one function.

---

## APCSA

---

### Sam

#### Making the Field Input (Big Challenge)

Incorporating the field input was one of the biggest challenges I've encountered with UI. It worked a little differently than text labels. Initially, I thought that I would be able to grab the value of field input by using similar syntax.

Ex: `int userNum = fieldInput.text; // Didn't work`

Instead, I've realized that Field Inputs in Unity had a method attached to it called `On End Edit (String)`. Basically, in simple terms, once the user clicks out of the input, the text is passed into the parameter. I can then take this value and store it in a variable.

```c#
public void getInput(string userInput)
{
    fieldInput = userInput;
}
```

However, this led to a problem. This meant that only strings could be recieved (This was a problem because I needed it to be recieved as an integer. I would then be able to use the integer as the force of the ball).

In order to solve this, I found an [article](https://www.tutorialsteacher.com/articles/convert-string-to-int#:~:text=The%20TryParse()%20methods%20are,64%2Dbit%20signed%20integer%20equivalent.) that helped me with converting the two datatypes (`String` -> `int`)


``` c#
// Top of script
Using System;
// within getInput(string userInput)
userNum = Int16.Parse(userInput); // Essentially converts the string userInput into an integer (ex: "123" -> 123)
```

With this, I was able to store the `userInput`, a string, into `userNum`, an int. This value was later used as the force of the upward and right motion of the object.

### Result
Screenshot 1:

![Screenshot 1](https://raw.githubusercontent.com/saml1087/apcsa-freedom-project/master/entries/images/entry03-1.PNG)
*image capturing before ball was launched*

Screenshot 2:

![Screenshot 2](https://raw.githubusercontent.com/saml1087/apcsa-freedom-project/master/entries/images/entry03-2.PNG)
*image capturing after ball was launched*

### Example

[private URL](https://github.com/hstatsep-students/student/blob/main/README.md)

