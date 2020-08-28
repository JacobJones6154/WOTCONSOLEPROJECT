# WOTCONSOLEPROJECT


Final project for MSSA SD8. World of tanks statistics tool.


![World Of Tanks](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/26-264596_transparent-world-of-tanks-logo-png-png-download.png)






## <div align="center">Table of Contents</div>

1) [Inspiration](#inspiration)
2) [Concept](#concept)
3) [Wire-Frames (DRAFT)](#wire-frames)
4) [Database Diagram](#database-diagram)
5) [Entity Relationship Diagram (ERD)](#entity-relationship-diagram)
6) [User Stories](#user-stories)
7) [Use Cases](#use-cases)
8) [Use Case Diagram](#use-case-diagram)
9) [Requirements](#requirements)
10) [Requirements Table](#requirements-table)
11) [Test Case Table](#test-case-table)



## <div align="center">INSPIRATION</div>
[(back to top)](#table-of-contents)

I gained inspiration for this application because all too often i found myself on the couch playing the video game and trying to find the statistics for certain tanks, and the current options available were not very user friendly or helpful. 

## <div align="center">Concept</div>
[(back to top)](#table-of-contents)

The idea of this project is to create a simple, user friendly tool to compare tanks from the World Of Tanks video game. I want this app to be extremely easy to use while sitting on the couch in between games. I want it to be aesthetically appealing and functional.

## <div align="center">Wire-Frames</div>
[(back to top)](#table-of-contents)

**THESE ARE INITIAL DRAFTS**

The Home Page would be screen with links to the different features of the site, as well as a few coverflow tools allowing the user to select their options.

![Home Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Home%20page.PNG)


The Countries Page is where the user is directed to when they click on the countries tab. On this page a user can swipe through the different nations available and make thier selection.

![Countries Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Countries.PNG)


The Tank Classes Page will display the five different tank classes that a user can choose from and the user can choose the class they are looking for and be directed to the Class Page.

![Tank Classes Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Tank%20Classes.PNG)


The Class Page will display two cover flow options, the first will allow the user to select tier 1-10, or all tiers. And the second coverflow will display the results based on the selection of the first cover flow. For instance, if the user chooses tier one, ALL tier one tanks of that specific class will be displayed.

![Class Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Class.PNG)


The Country Page will have a cover flow choice for each of the five specific tank class. Tanks will be displayed in order from lowest tier to highest. A user can choose the tank they wish to view tank description on from here.

![Country Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Country.PNG)


The Tank Description Page will display the chosen tank, the nation, the class, and the tier. Below that will display a table with tank attributes and their corresponding characteristics.

![Tank Description Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Tank%20description.PNG)


The Compare Page allows a user to choose up to three tanks to compare statistics. Once the add feature is clicked on, the user will be directed to the Country page, then the Tank Class page, and finally the Class page to make their selection. Once they make their first selection, they are directed back to the Compare page to add another tank. This process repeats until at least two tanks are selected. Once the user is ready to compare attributes, they will click on the Battle button and be directed to the Tank Comparison page. 

![Compare Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Compare.PNG)


The Tank Comparison Page will display a table with attributes and values. Each value column will have a header specifying which tank corresponds to that specific column.

![Tank Comparison Page](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Tank%20Compare.PNG)


## <div align="center">Database Diagram</div>
[(back to top)](#table-of-contents)


**Initial database diagram draft**

![Database Diagram](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Database%20Diagram.PNG)


## <div align="center">Entity Relationship Diagram</div>
[(back to top)](#table-of-contents)


**Initial Draft of the entity relationship diagram.**

![ERD](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/ERD%20snip.PNG)

## <div align="center">User Stories</div>
[(back to top)](#table-of-contents)


**1.** As an anonymous user I want to see available tanks, so that I can see the tank attributes.

**2.** As an anonymous user (role) I need to select two tanks, so that I can compare tank attributes.


## <div align="center">Use Cases</div>
[(back to top)](#table-of-contents)

**1.** Given the user is on the home page, when the user selects the countries tab, they are directed to the Countries page.

**2.** Given the user is on the Countries tab, when the user selects on a certain tank in a given class, they are directed to that page. 

**3.** Given that the user has selected a single tank, when they select the tank, they can see the tank attributes.

**4.** Given that the user has selected multiple tanks, when they choose to battle, they can see the tank attributes of the different tanks. 


## <div align="center">Use Case Diagram</div>
[(back to top)](#table-of-contents)

![Use Case Diagram](https://github.com/JacobJones6154/WOTCONSOLEPROJECT/blob/master/Assets/Use%20case%20Diagram.PNG)


## <div align="center">Requirements</div>
[(back to top)](#table-of-contents)

* 1.0\. User shall have Countries, Tank Classes, and a compare feature on the home page. 

* 2.0\. User shall be able to swipe through the available countries on the home page.

* 3.0\. User shall be able to Swipe through available tank classes on the home page.

* 4.0\. User shall be able to choose the countries tab and see the available countries.

* 5.0\. User shall be able to choose the tank classes tab and see the available classes.

* 6.0\. User shall be directed to the compare page when the compare tab is clicked.

* 7.0\. User shall be able to see available tiers and tanks when they select a certain tank class.

     * 7.1.0\. User shall be able to change tiers to filter available tanks and narrow down selection while on the chosen tank class page.
  
* 8.0\. User shall be able to see available classes given a certain country is selected.

     * 8.1.0\. User shall be able to swipe through the choices of each available class while on the given country page.
  
* 9.0\. User shall be able to choose the specific tank they want and be directed to the tank description page.
  
* 10.0\. User shall be able to select up to three tanks while on the Compare page.
  
     * 10.1.0\. User shall be directed to Country, then tank class, then tank selection after clicking on the add button while on the Compare Page.
  
     * 10.2.0\. User shall be directed back to the Compare Page after making their first selection in order to make a second selection.
  
     * 10.3.0\. User shall be directed back to the Compare Page after making a second selection in order to make a third selection or Compare the first two selections. 
  
* 11.0\. User shall be able to see the tank name and its corresponding values after choosing to compare multiple tanks. 

* 12.0\. User shall clear any current selections and return to the home page when they click on the Home Page button at the top. 


## <div align="center">Requirements Table</div>
[(back to top)](#table-of-contents)

| Requirement ID | Requirement Description                                                                                                                                 | Test Method   | Test ID |
|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|---------|
| 1.0            | User shall have Countries, Tank Classes, and a compare feature on the home page.                                                                        | Inspection    | TC001   |
| 2.0            | User shall be able to swipe through the available countries on the home page.                                                                           | Demonstration | TC002   |
| 3.0            | User shall be able to Swipe through available tank classes on the home page.                                                                            | Demonstration | TC002   |
| 4.0            | User shall be able to choose the countries tab and see the available countries                                                                          | Demonstration | TC002   |
| 5.0            | User shall be able to choose the tank classes tab and see the available classes.                                                                        | Demonstration | TC002   |
| 6.0            | User shall be directed to the compare page when the compare tab is clicked.                                                                             | Demonstration | TC002   |
| 7.0            | User shall be able to see available tiers and tanks when they select a certain tank class.                                                              | Inspection    | TC003   |
| 7.1.0          | User shall be able to change tiers to filter available tanks and narrow down selection while on the chosen tank class page.                             | Demonstration | TC004   |
| 8.0            | User shall be able to see available classes given a certain country is selected.                                                                        | Inspection    | TC005   |
| 8.1.0          | User shall be able to swipe through the choices of each available class while on the given country page.                                                | Demonstration | TC006   |
| 9.0            | User shall be able to choose the specific tank they want and be directed to the tank description page.                                                  | Demonstration | TC007   |
| 10.0           | User shall be able to select up to three tanks while on the Compare page.                                                                               | Demonstration | TC008   |
| 10.1.0         | User shall be directed to Country, then tank class, then tank selection after clicking on the add button while on the Compare Page.                     | Test          | TC009   |
| 10.2.0         | User shall be directed back to the Compare Page after making their first selection in order to make a second selection.                                 | Test          | TC009   |
| 10.3.0         | User shall be directed back to the Compare Page after making a second selection in order to make a third selection or Compare the first two selections. | Test          | TC009   |
| 11.0           | User shall be able to see the tank name and its corresponding values after choosing to compare multiple tanks.                                          | Inspection    | TC010   |
| 12.0           | User shall clear any current selections and return to the home page when they click on the Home Page button at the top.                                 | Test          | TC011   |


## <div align="center">Test Case Table</div>
[(back to top)](#table-of-contents)


| Test ID | Req ID                   | Test Procedure                                                                                                         | Current Status | Time Stamp |
|---------|--------------------------|------------------------------------------------------------------------------------------------------------------------|----------------|------------|
| TC001   | 1.0                      | Check if home page displays Countries, Tank Classes, and Compare features.                                             | Not Tested |            |
| TC002   | 2.0, 3.0,  4.0, 5.0, 6.0 | User will be able to swipe through given selection on  the home page.                                                  | Not Tested |            |
| TC003   | 7.0                      | While on the tank class page, tier selection and tank selection should be displayed.                                   | Not Tested |            |
| TC004   | 7.1                      | Choose a certain tier and only tanks of that tier will  be displayed.                                                  | Not Tested |            |
| TC005   | 8.0                      | On the Countries page, selection of available countries  should display.                                               | Not Tested |            |
| TC006   | 8.1                      | User should be able to swipe through and select a certain  country on the Countries Page.                              | Not Tested |            |
| TC007   | 9.0                      | After tank selection, the tank description page should  display the information for that tank.                         | Not Tested |            |
| TC008   | 10.0                     | On the Compare page, User should be able to select a  minimum of two tanks to compare.                                 | Not Tested |            |
| TC009   | 10.1.0, 10.2.0, 10.3.0   | Directed through tank selection process and redirected  to the Compare page.                                           | Not Tested |            |
| TC010   | 11.0                     | All of the chosen tanks statistics should be displayed  in order to effectively compare the values against each other. | Not Tested |            |
| TC011   | 12.0                     | Tank selection(s) should clear when the home page is clicked.                                                          | Not Tested |            |
