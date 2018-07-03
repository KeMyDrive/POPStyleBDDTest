# Protocol Oriented BDD in Swift for iOS
This demos the practice of Protocol Oriented BDD in Swift for iOS Apps.
This idea is from [shashikantjagtap.net](http://shashikantjagtap.net/introducing-protocol-oriented-bdd-swift-ios-apps/).

# BDD Concepts

Bdd stands for Behavior Driven Development. It is a process of bridging the communication gap between technology and business people using the same languages.

In a summary, it works like this:

* Write some user stories collaboratively with team.
* Capture the intended behaviour in the form of __Features__ before writing any code.
* Think of all possible scenarios that cover the intended functionality, reducing the risk of creating bugs. Write scenario title and write steps in domain specific language (DSL) or human readble format like [Gherkin](https://docs.cucumber.io/gherkin/) (Given When Then)
* Implement the behaviour in the form of [step definitions](https://docs.cucumber.io/cucumber/step-definitions/).
* Passing scenarios verify that the implementation of the behaviour has been successful.

# Protocol Oriented BDD

Implementing BDD principles in [Protocol Oriented](https://www.raywenderlich.com/148448/introducing-protocol-oriented-programming) way:

1. Write requirements in a common place shared with team.
2. Capture intended behaviour in the form of Swift Procotol which is similar to [Features format](https://docs.cucumber.io/gherkin/reference/#feature) in Gherkin.
3. Think of all possible scenarios in the form of [XCTest test methods](https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/04-writing_tests.html#//apple_ref/doc/uid/TP40014132-CH4-SW1) which is similar to scenario titles in Gherkin.
4. Write a XCTest class confirming to protocol means _we need to implement all the requrements in our tests_. e.g. `testHomeScreenHasGreetButton()`.
5. Write steps in the form of methods in Gherkin like format. e.g. `givenIAmOnTheHomeScreen()`.
6. Implement steps as an extension to the protocol defined for the particular feature.
7. Abstract UI elements in the form of enumeration for the particular feature.

# Protocol Oriented BDD in Action

In this demo, we are building a very simple app to practise the steps from the list above, using protocol-oriented BDD approach.

The app has following main requirements:

* App should have home screen with __Greet__ button
* When user press __Greet__ button, user should see a welcome message, "__Welcome to POP__"

You can find the entire project under `Greeter` folder in the repo.