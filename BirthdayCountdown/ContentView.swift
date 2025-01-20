//
//  ContentView.swift
//  BirthdayCountdown
//
//  Created by Ahmet Kaan Caliskan on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    let mytime = Date()
   
    var body: some View {
        VStack {
            HStack{
            Text("DD")
            Text("MM")
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
