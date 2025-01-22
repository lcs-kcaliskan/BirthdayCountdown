//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties

    @State private var currentDate = Date()
    @State private var birthday = Date().addingTimeInterval(2 * 24 * 60 * 60)
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Text("Choose your birthday")
            DatePicker("Choose your birthday", selection: $birthday, displayedComponents: .date)
            .labelsHidden()
            .padding(.horizontal)
                       
            Text(.currentDate, format: .reference(to: birthday))
            
        }
    }
    
    // MARK: Functions
   
        
    }
    
    
#Preview {
    ContentView()
}
