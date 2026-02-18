#!/usr/bin/env swift

import Foundation

func calculator() {
    print("Simple Swift Calculator")
    
    // Get the first number
    print("Enter the first number:")
    guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
        print("Invalid input for the first number.")
        return
    }
    
    // Get the operator
    print("Enter an operator (+, -, *, /):")
    guard let operation = readLine(), ["+", "-", "*", "/"].contains(operation) else {
        print("Invalid operator.")
        return
    }
    
    // Get the second number
    print("Enter the second number:")
    guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Invalid input for the second number.")
        return
    }
    
    // Perform calculation
    var result: Double?
    
    switch operation {
    case "+":
        result = firstNumber + secondNumber
    case "-":
        result = firstNumber - secondNumber
    case "*":
        result = firstNumber * secondNumber
    case "/":
        if secondNumber != 0 {
            result = firstNumber / secondNumber
        } else {
            print("Cannot divide by zero.")
        }
    default:
        break
    }
    
    // Show result
    if let answer = result {
        print("Result: \(answer)")
    }
}

// Run the calculator
calculator()
