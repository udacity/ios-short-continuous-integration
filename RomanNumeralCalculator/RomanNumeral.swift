//
//  RomanNumeral.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import Foundation

// modified from : https://gist.github.com/kumo/a8e1cb1f4b7cff1548c7
func toRoman(_ number: Int) -> String {

    if (number == 0) {
        return ""
    }

    if (number < 0) {
        return "-" + toRoman(-number)
    }

    let romanValues = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    let arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

    var romanValue = ""
    var startingValue = number

    for (index, romanChar) in romanValues.enumerated() {
        let arabicValue = arabicValues[index]

        let div = startingValue / arabicValue

        if (div > 0)
        {
            for _ in 0..<div
            {
                //println("Should add \(romanChar) to string")
                romanValue += romanChar
            }

            startingValue -= arabicValue * div
        }
    }
    
    return romanValue
}
