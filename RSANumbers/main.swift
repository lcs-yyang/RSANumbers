//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
var upperInput = 0
var lowerInput = 0

while 1 == 1 {
    
    print("Enter the lower limit of range")
    let input = readLine()
    // Test #1: Make sure it's not nil
    
    guard let givenInput = input else {
        continue
    }
    
    // Test #2: Check for integer
    guard let validInput = Int(givenInput) else {
        continue
    }
    
    //Test #3: Check if it's in the correct range
    if validInput < 1 || validInput > 1000 {
        continue
    }
    lowerInput = validInput
    break
}

while 1 == 1 {
    
    print("ENTER THE UPPER LIMITTTTTTT OF RANGE SHAKALAKABONGBONG")
    let input = readLine()
    // Test #1: Make sure it's not nil
    
    guard let givenInput = input else {
        continue
    }
    
    // Test #2: Check for integer
    guard let validInput = Int(givenInput) else {
        continue
    }
    
    //Test #3: Check if it's in the correct range
    if validInput < 1 || validInput > 1000 {
        continue
    }
    upperInput = validInput
    break
}
// PROCESS
// Implement the primary logic of the problem here
var RSA = 0
for numbers in lowerInput ... upperInput {
    var divisor = 0
    for i in 1...numbers {
        if numbers % i == 0 {
            divisor += 1
         
        }
    }
    if divisor == 4 {
        RSA += 1
    }
}


// OUTPUT
// Report results to the user here
print("The number of RSA is \(RSA)")




