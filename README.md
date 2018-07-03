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

# Pros and Cons

There are few benefits of doing BDD using protocol-oriented approach which are as follows:
* We can use native Swift Features like `protocol`, `extensions`, `enumeration`, etc. freely in the test code without any restrictions.
* We can use Apple's own `XCTest Framework` to drive development without any 3rd party libraries.
* We are not restricted to use `Gherkin` syntax. We can customise the language as we wanted.
* We can re-use any step within our test target. We can avoid duplication using writing smart and reusable steps.
* We can get started with protocol-oriented BDD framework within few minutes using [XCFit](https://github.com/Shashikant86/XCFit) Xcode templates. XCFit provides lots of [pre-defined steps](https://github.com/Shashikant86/XCFit/blob/master/Pre-Defined_Steps/XCFit_Predefined_Steps.md) that can be used straightaway into the test with no need for implementation.

However, there are few caveats, you may find using BDD in protocol-oriented way:
* Because of limitation of XCTest, we can not parameterise the scenarios using different examples.
* We may not get feel of proper BDD as programmers not get notified for the unimplemented steps.
* The reporting of the scenario execution to non-technical people might be tricky.