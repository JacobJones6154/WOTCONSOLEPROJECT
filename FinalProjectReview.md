## <div align="center">Table of Contents</div>

1) [Project Experience](#Project-Experience)
2) [Product Demonstration](#Product-Demonstration)
3) [Code-Architecture](#Code-Architecture)
4) [Lessons Learned](#Lessons-Learned)


## <div align="center">Project Experience</div>
[(back to top)](#table-of-contents)

 * Planning \.
   * Here is my initial wireframe design of the home landing page. I wanted several things on the home page. Since i had designed this so early on, I didnt know exactly what I would be able to do as a final output so it was wishful thinking. All of my initial designs was me just running through my head, what I thought would be best and most efficient at the time. 
   ![Home Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Home%20page.PNG) \.
 * Analysis \.
   * For the analysis I tried to do some market research of current applications that do similar functions to what I wanted. I tried to take the pros from each that I liked and ditch what I didnt like \.
 * Design \.
    * I used online tools to help design my wireframes and develop the flow I thought was useful, then I moved onto Prototypes with an online tool as well. This was all very useful in giving me ideas for how to layout my application\.
 * Implementation \.
    * Once I began to get down to the nitty gritty of the application, I realized designing a mobile first application wasnt in the best interest to the user to see my vision. Also, going through with my skill level, I changed the application significantly to match my talents as well as improve the userability of the site. I no longer had page after page to click through to get to a single tank but now I fell that it is a smoother process to the end goal. Some things are still being developed as of writing, namely the Compare page has yet to be fully created\. 
 * Testing \.
    * There were no dedicated test cases built for the website. I would just develop a portion of the application and then run it through the paces to ensure that it was doing what I wanted it to do\.
 * Maintenance \.
    * Since I have deployed my application on Azure, I have had several others check over the site and offer suggestions to improve the user experience and have tried to implement those suggestions \.

 



## <div align="center">Product Demonstration</div>
[(back to top)](#table-of-contents)

# https://tankopedia.azurewebsites.net



## <div align="center">Code Architecture</div>
[(back to top)](#table-of-contents)

This is going to be the main pages and what it took to display those pages.
Here you cans see the code for the home landing page. I omitted the navbar. You can see I created a jumbotron to display some headers and a few buttons to help direct around the site. I changed the page background to a garage to complete the feel of a tank. Then i changed the opacity of the jumbotron background to be completely see through.  
![Homecode](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/homecode.PNG)


For my Tanks page, I created a single card template to display the image and a few key details of the tank, as well as a button to get more details of the tank if the user wants. You will see that the card is completely wrapped in a foreach loop so that it will create a card for each item that the model creates from the database. So if I create a new tank another card will be created and it will alternatively remove cards as i remove tanks fromt the db. 
![TanksCode](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/tankscode.PNG)


## <div align="center">Lessons Learned</div>
[(back to top)](#table-of-contents)

* What did you do right\?
  * I think the biggest thing that i did right was what i chose for my project. I think that it was much more in tune to what my skill level would be rather than my other two initial project ideas.  \.
* What did you do wrong\?
  * I initially wanted to do way more than my skill level, so i had to scale back to my skill level.  \.
* Where were you lucky\?
  * I got lucky and was able to find some MS documentation that created an app that was extremely useful when I came to a roadblock. I was also lucky to have the help that some offered in this course, it was super helpful in all aspects from design ideas to code development to maintenance of the application \.
* what would you change / what do you know now that you wish you knew "then"\?
  * I would have not created my database so early, as I had to recreate it several times as my application progressed before i actually needed it. I would also start out much simpler and implement new features as my skill level progresses\.



