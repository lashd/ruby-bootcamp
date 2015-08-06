#BDD
We are going to write a very simple web application and drive it out using some behavioural tests.

The web application is one that will let users that, log in correctly, to view their bill. Conceptually it will be similar to the appication you are writing in the [Sinatra Exercise](../../exercises/sinatra) but we won't be implementing all of the features that the exercise asks for so don't worry there will not be to many spoliers!

During the implementation of this application and it's tests we will progressively refactor what we are writing so that we can focus on some of the features/approaches that are available.

## Cucumber vs...
In this example we are going to use Cucumber. There are lots of BDD frameworks out there and which one is right for you and whether should even use one can be pretty contextual and a long topic of discussion.



## An example
### Starting with the Feature
```cucumber
Feature: The name of the capability
The description of what it does and context around why it is needed/useful

Scenario: Something that can happen
  Given Something is the case
  When you use this feature
  Then the following should happen
```
For our first feature we might write something like this.
```cucumber
Feature: Login
User's must be logged in order to see their personal information.

Scenario: Something that can happen
  Given I got to the login page
  And I enter in the correct username
  And I enter in the correct password
  When I click the login button
  Then I should be on the Bill Page
```
Demonstration:
1. Features directory
2. Auto generate steps

##Watir webdriver
[Watir Webdriver](https://github.com/watir/watir-webdriver) is an API for driving physical browsers. It's pretty cool but there are some down sides. We'll look at these later as we refactor our solution.

Demonstration:
1. Implement at steps to get a failing test
2. Implement simplest application possible to pass the test.



1. auto gen steps
2. defining steps manually - smarter
3. basic steps using watir webdriver
4. removing duplication
5. The problem with watir webdriver - not high level enough
6. Page Objects
7. Page Magic
8. Helper methods
9. The World Object
10. Support directory
 - env.rb
11. Testing your controllers - and duplication that's worth it
12. Testing the pages directly - PageMagic and the reuse you can get



