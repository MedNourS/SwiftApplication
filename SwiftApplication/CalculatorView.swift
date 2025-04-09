//
//  ContentView.swift
//  SwiftApplication
//
//  Created by Chariot 3 - Ordinateur 4- User7 on 2025-02-27.
//

import SwiftUI

struct CalculatorView: View {

    // Variables
    @State private var num1: Int = 0
    @State private var num2: Int = 0
    @State private var result: Int = 0

    // Functions
    func sum(of a: Double, and b: Double) -> Double {
        return a + b
    }

    func difference(of a: Double, and b: Double) -> Double {
        return a - b
    }

    func product(of a: Double, and b: Double) -> Double{
        return a * b
    }

    func quotient(of a: Double, and b: Double) -> Double {
        return a / b
    }

    func updateResult(with function: (num1, num2) -> Double) {
        result = function
        print("The result has been updated to: \(result)")
    }

    func clearResult() {
        result = 0
    }

    // View
    var body: some View {
        VStack {
            TextField("Number 1", value: $num1, format: .number)
            TextField("Number 2", value: $num2, format: .number)
            
            HStack {
                Button(action: updateResult(sum)) {
                    systemImage("plus")
                }
                
                Button(action: updateResult(difference)) {
                    systemImage("minus")
                }

                Button(action: updateResult(product)) {
                    systemImage("multiply")
                }

                Button(action: updateResult(quotient)) {
                    systemImage("divide")
                }
            }
            .padding()

            Button(action: clearResult()) {
                Text("Clear")
            }

            Text("Result: \(result)")
        }
        .padding()
    }
}

#Preview {
    CalculatorView()
}
