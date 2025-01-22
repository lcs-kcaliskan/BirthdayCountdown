//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties

    @State private var feedback: String? = nil
    @State private var daysUntilBirthday: Int? = nil
    @State private var date = Date()
    @State private var birthday = Date()
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Text("Choose your birthday")
            DatePicker("Choose your birthday", selection: $birthday, displayedComponents: .date)
            .labelsHidden()
            .padding(.horizontal)
                       
            Button("Calculate Days Until Next Birthday") {
                calculateDaysUntilNextBirthday()
            }
            
            
            if let feedback = feedback {
            Text(feedback).foregroundColor(.red).padding(.top, 8)
                       }
                       
            if let daysUntilBirthday = daysUntilBirthday {
                Text("Days until your next birthday: \(daysUntilBirthday)")
                       }
            
            
        }
        .padding()
    }
    
    // MARK: Functions
    func calculateDaysUntilNextBirthday() {
       
        }
        
    }
    
    
}
#Preview {
    ContentView()
}
