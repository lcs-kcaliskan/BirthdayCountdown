//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let mytime = Date()
    
    @State private var givenInputDD = ""
    @State private var givenInputMM = ""
    @State private var feedback: String? = nil
    @State private var daysUntilBirthday: Int? = nil
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            HStack{
                Text("Enter your birth month(1-12):")
                TextField("Type", text: $givenInputMM)
            }
            HStack{
                Text("Enter your birth date(1-31):")
                TextField("Type", text: $givenInputDD)
            }
            Text("Your birthday is (day/month): \(givenInputDD)/\(givenInputMM)")
            
            Text("Placeholder")
            
            
        }
        .padding()
    }
    
    // MARK: Functions
    func calculateDaysUntilNextBirthday() {
        feedback = nil
        daysUntilBirthday = nil
        
        guard let month = Int(givenInputMM), month >= 1, month <= 12 else {
            feedback = "Please enter a valid month (1-12)."
            return
        }
        guard let day = Int(givenInputDD), day >= 1, day <= 31 else {
            feedback = "Please enter a valid day between 1-31."
            return
        }
    }
    
}

#Preview {
    ContentView()
}
