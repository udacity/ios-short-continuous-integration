//
//  RomanNumeralCalculatorTests.swift
//  RomanNumeralCalculatorTests
//
//  Created by Andrey Panov on 05.04.17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest
@testable import RomanNumeralCalculator

class RomanNumeralCalculatorTests: XCTestCase {
    
    func testToRoman() {
        XCTAssertEqual(toRoman(1), "I")
        XCTAssertEqual(toRoman(2), "II")
        XCTAssertEqual(toRoman(4), "IV")
    }
}
