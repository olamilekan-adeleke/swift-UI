//
//  ContentView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 17/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var animate: Bool = true

    var body: some View {
        VStack {
            ActivityIndicator(animating: animate)

            HStack {
                Toggle("Toggle Activity", isOn: $animate)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
