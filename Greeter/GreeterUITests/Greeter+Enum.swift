//
//  Greeter+Enum.swift
//  GreeterUITests
//
//  Created by Ke Ma on 03/07/2018.
//  Copyright © 2018 MyDrive. All rights reserved.
//

import XCTest

enum GreeterElements {
    static let greetButton = XCUIApplication().buttons["Greet"]
    static let welcomeText = XCUIApplication().staticTexts["Welcome"]
}
