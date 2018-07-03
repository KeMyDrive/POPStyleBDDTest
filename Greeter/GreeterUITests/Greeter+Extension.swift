//
//  Greeter+Extension.swift
//  GreeterUITests
//
//  Created by Ke Ma on 03/07/2018.
//  Copyright © 2018 MyDrive. All rights reserved.
//

import XCTest

extension Greetable {
    func givenTheAppIsLaunched() {
        XCUIApplication().launch()
    }
    
    func thenIShouldSeeGreetButton() {
        XCTAssertTrue(XCUIApplication().buttons["Greet"].exists)
    }
    
    func whenITapGreetButton() {
        XCUIApplication().buttons["Greet"].tap()
    }
    
    func thenIShouldSeeWelcomeMessage() {
        XCTAssertTrue(XCUIApplication().staticTexts["Welcome"].exists)
    }
}
