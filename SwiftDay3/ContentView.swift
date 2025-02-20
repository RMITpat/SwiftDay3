//
//  ContentView.swift
//  SwiftDay3
//
//  Created by Patrick Ly on 20/2/2025.
//

import SwiftUI
func calculateDogYears(age: Double) -> Double {
    return age * 7
}

struct ContentView: View {
    
    @State private var age = 0.0
    
    
    
    var body: some View {
        VStack {
       
            
            switch age {
            case 0...15:
                Text("🐶")
                    .font(.system(size : 200))
            case 16...25:
                Text("🪦")
                    .font(.system(size : 200))
            
            default:
                Text("😱")
                    .font(.system(size : 200))
            }
            
            Text("Dog Years Calculator!")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.black)
            Slider(value: $age, in: 0...25, step : 1)
            Text("\(Int(age))")
                .font(.title2)
            Text("Dog age: \(Int(calculateDogYears(age: age)))")
                .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
