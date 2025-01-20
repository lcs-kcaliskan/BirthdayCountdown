//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    let mytime = Date()
   
   let givenInputDD = "14"
   let givenInputMM = "10"
    let selectedNumberDD = Int(givenInputDD)!
    let selectedNumberMM = Int(givenInputMM)!
    var body: some View {
       
        VStack {
            HStack{
            Text("Birthday(DD/MM):\(givenInputDD)/\(givenInputMM)")

        }
            Text("Feedback")
            Text("Current Date is: \(mytime)")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
