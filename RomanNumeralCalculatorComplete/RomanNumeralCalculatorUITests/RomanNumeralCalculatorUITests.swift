//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Jarrod Parkes on 11/29/16.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared().orientation = .portrait
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddOnePlusOne() {
        // create app/element handles
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        // tap "+"
        app.buttons["+"].tap()
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "II")
    }
}
