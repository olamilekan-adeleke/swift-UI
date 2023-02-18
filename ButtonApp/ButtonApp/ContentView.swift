//
//  ContentView.swift
//  ButtonApp
//
//  Created by Enigma Kod on 13/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ButtonView(), label: {
                    Text("Buttons")
                })

                NavigationLink(destination: EditButtonView(), label: {
                    Text("Edit Buttons")
                        .padding()
                })

                NavigationLink(destination: MenuButtonView(), label: {
                    Text("Menu Buttons")
                })

                NavigationLink(
                    destination: Text("Very long text that should not be displayed in a single line because it is not good design")
                        .padding()
                        .navigationBarTitle(Text("Detail")),
                    label: {
                        Text("details about text").padding()
                    })

                NavigationLink(destination: FlavorView(), label: {
                    Text("Flavours")
                })
                
                SomeNewView()
            }.navigationBarTitle(Text("Main View"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FlavorView: View {
    let items = ["Chocolate", "Vanilla", "Strawberry", "Mint Chip",
                 "Pistachio"]
    var body: some View {
        NavigationView {
            List(items, id: \.self) {
                Text($0)
            }
            .navigationBarTitle(Text("Today's Flavors"), displayMode: .inline)
        }
    }
}

struct SomeNewView: View {
    var body: some View {
        Text("Tests")
    }
}
