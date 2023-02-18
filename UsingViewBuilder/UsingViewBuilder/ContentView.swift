//
//  ContentView.swift
//  UsingViewBuilder
//
//  Created by Enigma Kod on 15/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var wifiState: Bool = false

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }.symbolVariant(.fill.circle)
                .foregroundColor(Color.teal)
                .font(.title)

            HStack {
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibility(identifier: "Letter K")
            }.foregroundColor(.blue)
                .font(.title)
                .padding()

            HStack {
                Image(systemName: "allergens")
                Image(systemName: "ladybug")
            }.symbolVariant(.fill)
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
                .foregroundColor(wifiState ? .teal : .secondary)

            Toggle(isOn: $wifiState) {
                Label("Wifi", systemImage: "wifi")
            }
            .foregroundColor(wifiState ? .teal : .secondary)
            .padding([.leading, .trailing], 25)
            .padding([.top], 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
