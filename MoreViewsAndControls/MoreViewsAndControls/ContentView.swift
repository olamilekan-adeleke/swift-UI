//
//  ContentView.swift
//  MoreViewsAndControls
//
//  Created by Enigma Kod on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Float = 0.5
    @State private var color: Color = .red
    @State private var secondaryColor: Color = .yellow
    @State private var someText: String = "Initial Value"

    var body: some View {
        List {
            Section(header: Text("Progress View")) {
                ProgressView("Indeterminate progress")

                ProgressView("Downloading", value: progress, total: 2)

                Button("More") {
                    if progress < 2 {
                        progress += 0.5
                    } else {
                        progress = 0
                    }
                }
            }

            Section(header: Text("Labels")) {
                Label("Slow", systemImage: "tortoise.fill")
                Label {
                    Text("Fast").font(.title)
                } icon: {
                    Circle()
                        .fill(Color.teal)
                        .frame(width: 25, height: 25, alignment: .center)
                        .overlay(Text("F").foregroundColor(.white))
                }
            }

            Section(header: Text("Color Picker")) {
                ColorPicker(selection: $color) {
                    Text("Pick Background Color")
                        .padding([.top, .bottom], 5)
                        .padding([.trailing, .leading], 10)
                        .background(color)
                        .padding([.top, .bottom], 3)
                        .cornerRadius(20)
                }

                ColorPicker("Picker", selection: $secondaryColor)
            }

            Section(header: Text("Text Editor")) {
                TextEditor(text: $someText)
                Text("Current editor text: \(someText)")
            }

            Section(header: Text("Menu")) {
                Menu("Action") {
                    Button("Set TextEditor text to 'magic'", action: {
                        someText = "magic"
                    })

                    Button("Turn first picker green", action: {
                        color = Color.green
                    })

                    Menu("More Action") {
                        Button("Set TextEditor text to 'magic'", action: {
                            someText = "magic"
                        })

                        Button("Turn first picker green", action: {
                            color = Color.green
                        })
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
