//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Dines Poulsen on 12/28/16.
//  Copyright © 2016 Dines Poulsen. All rights reserved.
//

import UIKit

class FizzBuzz: NSObject {
        
        var fizzBuzzCount: Int = 0
        
        func isMultipleOfThree(number: Int) -> Bool {
            if number % 3 == 0 {
                return true
            } else {
                return false
            }
        }
        
        func isMultipleOfFive(number: Int) -> Bool {
            if number % 5 == 0 {
                return true
            } else {
                return false
            }
        }
        
        func isMultipleOfThreeAndFive(number: Int) -> Bool {
            if number % 5 == 0 && number % 3 == 0 {
                return true
            } else {
                return false
            }
        }
        
        func game(number: Int) -> String {
            if isMultipleOfThreeAndFive(number: number) {
                return "FizzBuzz"
            }
            else if isMultipleOfFive(number: number) {
                return "Buzz"
            }
            else if isMultipleOfThree(number: number) {
                return "Fizz"
            }
            else {
                return "\(number)"
            }
        }
        
        func repetition(times: Int) -> Int {
            for number in 1...times {
                if self.game(number: number) == "FizzBuzz" {
                    self.fizzBuzzCount += 1
                }
            }
            return self.fizzBuzzCount
        }
    
        func reset() {
            self.fizzBuzzCount = 0
        }
    }

