//
//  ContentView.swift
//  PickerApp
//
//  Created by Enigma Kod on 13/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var choice: Int = 0
    @State var showText: Bool = false
    @State var transitMode: [String] = ["Bike", "Car", "Bus"]
    @State var sliderVal: Float = 0
    @State var stepVal: Int = 0
    @State var gameTime: Date = .init()

    var body: some View {
        Form {
            Section {
                Picker("Transit Mode", selection: $choice) {
                    ForEach(0 ..< transitMode.count) { index in
                        Text("\(self.transitMode[index])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Text("Current Choice: \(transitMode[choice])")
            }

            Section {
                Toggle(isOn: $showText) {
                    Text("Show Text")
                }
                if showText {
                    Text("Text Text toggle is on")
                }
            }

            Section {
                Slider(value: $sliderVal, in: 0 ... 10, step: 0.001)
                Text("Slider current value: \(sliderVal, specifier: "%.2f")")
            }

            Section {
                Stepper("Stepper", value: $stepVal, in: 0 ... 5)
                Text("Stepper Current Value: \(stepVal)")
            }

            Section {
                DatePicker("Please select a data", selection: $gameTime)
            }

            Section {
                DatePicker("Please select a data", selection: $gameTime, in: Date()...)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
