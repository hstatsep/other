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
<div class = container>
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

* Obstacle #1- My objective was to learn how grid systems work. During this lesson, I was instructed to create a webpage using the grid system on my IDE. The instructions required me to use: container(s), container-fluid(s), row(s), col(s), etc. All was good until I couldn't get my website to look the way I wanted it to on large devices. One way I tried tackling this problem was by placing `col-lg-3` in the class's next to `col-md-6`, however for some reason it wasn't working. I tried moving things around, but I just couldn't understand what I had done wrong... 
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
    	<p>
			<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-                 controls="collapseWidthExample">
				By the way...
			</button>
    	</p>
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

### Example

[private URL](https://github.com/hstatsep-students/student/blob/main/README.md)

