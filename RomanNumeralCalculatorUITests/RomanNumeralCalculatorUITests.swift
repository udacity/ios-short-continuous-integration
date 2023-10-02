//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Ahmed Nafie on 03/10/2023.
//  Copyright © 2023 buddybuild. All rights reserved.
//

import XCTest

@testable import RomanNumeralCalculator


class RomanNumeralCalculatorUITests: XCTestCase {
    override func setUpWithError() throws {
        let app = XCUIApplication()

        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app.launch()
        XCUIDevice.shared.orientation = .portrait
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

            func testOnePlusOne() throws {
                let app = XCUIApplication()
                let iStaticText = app.buttons["I"].staticTexts["I"]
                let calculatedLabel = app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"II\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

                //tap I
                iStaticText.tap()
                XCTAssertEqual(calculatedLabel.label, "I")
                //tap +
                app/*@START_MENU_TOKEN@*/.staticTexts["+"]/*[[".buttons[\"+\"].staticTexts[\"+\"]",".staticTexts[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                // tap II
                iStaticText.tap()
                XCTAssertEqual(calculatedLabel.label, "II")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
