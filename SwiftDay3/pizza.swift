//
//  pizza.swift
//  SwiftDay3
//
//  Created by Patrick Ly on 20/2/2025.
//

import SwiftUI

struct pizza: View {
    
    @State private var name: String = ""
    @State private var isTomato: Bool = true
    @State private var isCheese: Bool = true
    @State private var isMushroom: Bool = true
    @State private var servings = 0.0
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 180, height: 180)
                    .foregroundColor(.brown)
                if isCheese {
                    Circle()
                        .frame(width: 160, height: 160)
                        .foregroundColor(.yellow)
                }
                if isTomato {
                    Circle()
                        .frame(width: 160, height: 160)
                        .foregroundColor(.red)
                }
                if isTomato && isCheese {
                    Circle()
                        .frame(width: 160, height: 160)
                        .foregroundColor(.orange)
                }
                if isMushroom {
                    Text("🍄‍🟫")
                        .font(.custom("", fixedSize: 100))
                }
                
            }
            
            Text("It's pizza time!!")
                .font(.title)
            Form {
                
               
                
                Section(header: Text("Your name for the order")) {
                    TextField("Your name", text: $name)
                }
                
                Section(header: Text("Your pizza toppings")) {
                    Toggle(isOn: $isTomato) {
                        Text("Tomato")
                        
                    }
                    Toggle(isOn: $isCheese) {
                        Text("Cheese")
                        
                    }
                    Toggle(isOn: $isMushroom) {
                        Text("Mushroom")
                        
                    }
                }
                Section(header: Text("Choose your favourite colour")) {
                    ColorPicker("Select your favourite colour", selection: .constant(.blue) )
                }
                
                Section(header: Text("Date pick up")) {
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                
                Section(header: Text("Number of servings \(Int(servings))")) {
                    Slider(value: $servings, in: 1...10, step: 1)
                }
                
            }
            
                
            
        }
        
    }
}

#Preview {
    pizza()
}
