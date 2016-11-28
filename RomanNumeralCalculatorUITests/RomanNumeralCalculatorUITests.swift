//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Chris on 2016-09-07.
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
        let calcLabel = app.staticTexts["calculated_value"]
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "I")
        // tap "+"
        app.buttons["+"].tap()
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "II")
    }
    
    func testClearScreenAddToFiveByOnes() {
        // create app/element handles
        let app = XCUIApplication()
        let calcLabel = app.staticTexts["calculated_value"]
        let iButton = app.buttons["I"]
        // clear the sum
        XCTAssertEqual(calcLabel.label, "XXVI")
        app.buttons["Clear"].tap()
        XCTAssertEqual(calcLabel.label, "")
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "I")
        // tap "+"
        app.buttons["+"].tap()
        // continue tapping "I" until sum is "V" (5)
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "II")
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "III")
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "IV")
        iButton.tap()
        XCTAssertEqual(calcLabel.label, "V")
    }
}
