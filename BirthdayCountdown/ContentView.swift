//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    let mytime = Date()
  
   @State private var givenInputDD = ""
    @State private var givenInputMM = ""
    @State private var feedback = ""

   
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
            Text("\(feedback)")
            Text("Your birthday is (day/month): \(givenInputDD)/\(givenInputMM)")
            
           Text("Placeholder")
        
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
