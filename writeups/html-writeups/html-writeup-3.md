# Process Writeup

## Name: Caleb G
## Course: SEP 10
## Period: 5
## Concept: HTML

### Section: Context
 In the software engineering program we began HTML. HTML is a vital part of our end of year project and learning it was incredibly important. The goal was to be able to understand HTML enough to create basic websites. When using HTMl we learned it stands for Hypertext Mark-Up Language, and how important it is for every website you have ever used. We learned,
* HTML skeleton
* Closing tags and opening tags
* Div traits
* Radio buttons
* How to make clickable images and links
* Label inputs

Learning all of this in a short period of time came with its challenges. Most challenging for me was making clickable links and jumping to the bottoms of pages.

### Goal
The main goal was to understand basic HTMl concepts but specifically for me I wanted to understand how to make clickable links and internal links. One specific project is when we tried to recreate a website page during a coding challenge.

### Process
To recreate the basic website, me and my partner split up the work evenly. We decided that I would take the creating the 
```HTML
<p></p>
```
Tags and different indentations. My partner took the
```HTMl
<div></div>
```
Tags. We decided that she would take the Radio Button and I would do the clickable link. We worked through all of the easy stuff until we got to the radio buttons and clickable link. We had to refer to Free Code Camp everytime we had a question. The question that we had trouble answering is how to make the Radio buttons go vertically. Ultimately we understood and got it.

### Challenge 1
The first challenge I faced was with
```HTML
<a href="https://apcentral.collegeboard.org/courses/ap-computer-science-a">
```
When trying to make it a clickable link it wasn't going to the image. I sat for 30 minutes going over Free Code Camp lessons and different notes to try and understand why it wasn't attached. When I asked my partner she looked and realized I was missing a target value.
```HTMl
 <a href="https://apcentral.collegeboard.org/courses/ap-computer-science-a" target="img">
```
When I added the target value I was ecstatic to realize that it started working. I then quickly worked through the rest of the code to create the img tag and make it connected. Then I tried it out and realized that it didn't work. That problem was quickly resolved when I realized I missed a letter while copy and pasting.

### Challenge 2
The second and final challenge we faced was to correctly figure out the Radio Buttons. Radio buttons were one of the hardest topics for me to understand. My partner struggled as well to make the radio buttons look good. When trying to name them we worked hard but they refused to cooperate.
```HTML
  <input id="IOS" value="IOS" type="radio" name="topic" >
```
We thought that the Input ID would be the name value. So we created 3 of them but quickly realized the names weren't correct. So we went back to our notes and asked other friends if they could check our work. Eventually one of our friends helped us realize that at the end of the code you need the name of the button. We changed the name of all of our radio buttons to name them correctly. Then we saw that all the Radio buttons were vertical instead of vertically like the website we were trying to replicate. We tried putting them in ```label``` commands but that didn't work. So we pondered more and wondered if we could separate them with ```<P></P>``` so we added them.
```HTML
    <p>Which of the following is Java used for?</p>
  <label> 
      <input id="IOS" value="IOS" type="radio" name="topic" >IOS
  </label>
    <p></p>
  <labeL>
        <input id="Android" value="Android" type="radio" name="topic" >Andriod
  </labeL>
    <p></p>
  <labeL>
        <input id="Windows" value="Windows" type="radio" name="topic" >Windows
  </labeL>
    
    <p></p>
```
This separated the Radio buttons and allowed our radio buttons to be clear and concise.
### Result
The result ended is this:
* [Coding Challenge](https://replit.com/@calebjgarcia08/SEP-Site-toughest#index.html)

### Takeaways
This coding challenge taught me how important it is to reference notes and ask others. From now on I will try to take better notes for Free Code Camp lessons and what I don't understand. When I looked for the tags I was missing in my notes they were completely missing. I had to ask Essie and Simran to help me. I noticed they were able to help me because they had comprehensive notes that completely detailed what we learned. I plan to continue to update the HTML section of my notes to fill in the gaps of my knowledge. For the next Unit I will make sure to take notes on things I don't understand instead of having to be stuck and go back to Free Code Camp. 