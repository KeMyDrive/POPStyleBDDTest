//
//  GreeterUITests.swift
//  GreeterUITests
//
//  Created by Ke Ma on 03/07/2018.
//  Copyright © 2018 MyDrive. All rights reserved.
//

import XCTest

class GreeterUITests: XCTestCase, Greetable {

    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHomeScreenHasGreetButton() {
        givenTheAppIsLaunched()
        thenIShouldSeeGreetButton()
    }
    
    func testUserShouldGetWelcomeMessageOnceTappedGreetButton() {
        givenTheAppIsLaunched()
        whenITapGreetButton()
        thenIShouldSeeWelcomeMessage()
    }
}
