# Process Writeup

## Name: Qilin G
## Course: SEP 10 (Web design)
## Period: 6
## Concept: HTML Elements
### Context 
HTML is a markup language for web design. I can use HTML elements to format my web page and make my web page more interactive. 

### Free Code Camp
In FCC, I learned how to add images, add links, make lists, add inputs, and use div. Each of these topics has its element, and these elements were combinable. When I combine the elements, the output of the elements would have more than one property. 

#### Link
The Anchor Element adds a link to the web page. It has an opening tag `<a href>` and a closing tag `</a>`. There is a dead, external, and internal link. I can add attributes to the Anchor Element to change its property.

##### Dead Link 
I need to set the href value to "#" to link a dead link.
``` HTML
<a href="#"> Cat photo </a>
```

##### External Link
To link an external link, I add the URL to the opening tag and close it with a closing tag.
``` HTML 
<a href="https://www.freecatphotoapp.com"> Cat photo</a>
```  
When I add words between the opening and closing tags, the phrases between them will turn blue and become clickable. When the user clicks on the word, the web page will jump to another web page.

##### Internal Link 
An internal link allows the user to jump from one place to another place in the web page. To make an internal link, I must add "#" and the `id` value to the `href` attribute. Then, I need to add the same `id` attribute anywhere on the page I want my user to jump to. 
```HTML
<a href="#footer"> Jump to bottom </a>
...
<footer id="footer"> </footer>
```
##### Challenge 
When I first made an internal link, I didn't understand the directions of the lesson. I should have added the `id` attribute to the opening tag of the `footer` element, not between the opening and closing tags. 
``` HTML
<footer> id="footer" </footer >
```
I asked for help from Mr. Mueller, and he told me that the `id` attribute should be inside the opening tag, as the example shows. So, I changed the place of the `id` attribute, and it worked after I fixed it. 

#### Image 
I learned to use the `img` element with the `src` attribute to add an image to the web page. The `img` element is closed by itself and does not need a closing tag. When adding an image, I can add the image URL to the `img` element. 
``` HTML
<img scr= "https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg"> 
```
##### Image and link  
I could turn an image into a link by combining the `a` and `img` elements. I had to add the `img` element in between the `a` element. Free Code Camp shows it like this ... 
``` HTML 
<a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Three kittens running towards the camera."></a>
```
##### Challenge 
I had challenges applying what I learned in Free Code Camp in my other assignments. In one of my assignments, I needed to turn an image into a link, so I looked back to Free Code Camp and copied down the codes but replaced the image URL with the image URL I needed. When I clicked on the image, it did not show up the expected web page. I asked my partner, but she also had no clues either. When I went home, I looked back at my notes. I remembered that a "#" would make the link dead, so I replaced the "#" with the image URL I was aiming for. The final codes look like this ... 
``` HTML
<a href="https://apcentral.collegeboard.org/courses/ap-computer-science-a"><img src="https://javabeanz.files.wordpress.com/2009/06/300pxjava_logo-svg.png"></a>
```

#### List
There are two kinds of lists: ordered list and bullet unordered list. There is the `<ul>` element for the unordered list and `<ol>` for the ordered list. For both ordered and unordered lists, the `<li>` elements will get wrapped inside the `<ul>` or `<ol>` elements.

##### Unordered lists 
``` HTML 
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```
##### Ordered lists 
``` HTML
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

#### Inputs 
I learned three types of inputs from Free Code Camp. They are the text box, radio button, and checkbox. The `input` element does not need a closing tag. 

##### Text box  
To create a text box, I make the `type` attribute's value to "text," allowing the program to know what type of input I want. I can also add a placeholder in the text box to tell the user what I want them to input. 
``` HTML
<input type="text" placeholder="this is placeholder text">
```
##### Radio button 
A radio button is typically the same as a checkbox. The `type` attribute's value makes an input become a radio button or checkbox. When there is a set of radio buttons, I can make the user select only one radio button using the `name` attribute.
``` HTML
<label for="indoor"> 
  <input id="indoor" type="radio" name="indoor-outdoor">Indoor 
</label>
```

##### Checkbox 
To create a check box, I will just set the `type` attribute's value to "checkbox." While the user may only be able to select one radio button, the user can select multiple checkboxes.
``` HTML
<label for="loving">
  <input id="loving" type="checkbox" name="personality"> Loving
  </label>
```

##### Challenge 
In Free Code Camp, one lesson is trying to tell me to make a set of radio buttons and a set of checkboxes. Since the codes look so similar, I typed down one line of code for the radio button and one line of code for the checkbox and copied and pasted. However, all the radio buttons and checkboxes show up to have the same name.
At first, I thought the `name` attribute's value was the words that appear next to the inputs, so I gave different values to the `name` attribute for each radio button and checkbox. When I try to submit it, Free Code Camp does not let me go to the next lesson and says I should have the same `name` attribute for all radio buttons and the same `name` attribute for all checkboxes. I then thought it was the `id` attribute that decided what words would show up, so I changed values for the `id` attribute, but still, it did not work. Finally, I noticed the words between the opening and closing tags are the same. I could go to the next lesson after changing the words between the tags. 

#### Challenge outside of FCC
I got two questions wrong on a quiz, and these two questions are about the header element. It asked me about the smallest header tag, and I picked the wrong choice- `<h16>`. The quiz showed me the answers to the questions I got wrong, and I learned that the smallest header tag would be `<h6>`. In the markdown lessons, it once again mentioned the header tags. For it, I know that the biggest header is `<h1>` and the smallest header is `<h6>`. I also tried to write header codes like `<h7>` and `<h16>` in jsbin.com, but it show up the same size as `<h6>`. Now, I would keep in mind that the smallest header is `<h6>` 


#### Takeaways
The two biggest takeaways from my challenges are that ...
1. All attributes should be inside of the opening tag.
2. The words between the opening and closing tags will appear on the web page. Everything that is inside the tags is behind the scenes.