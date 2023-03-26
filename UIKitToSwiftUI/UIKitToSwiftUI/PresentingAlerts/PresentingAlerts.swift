//
//  PresentingAlerts.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct PresentingAlerts: View {
    @State private var showSubmitAlert = false
    @State private var count = 0

    var body: some View {
        VStack {
            Text("\(count)").padding()
            Button("Show Alert") {
                showSubmitAlert = true
            }
        }
        .alert("Confrim Action", isPresented: $showSubmitAlert) {
            Button("Yes nah") {
                count += 1
            }

            Button("Nope") {}
        } message: {
            Text("Are you sure you want to to count")
        }
    }
}

struct PresentingAlerts_Previews: PreviewProvider {
    static var previews: some View {
        PresentingAlerts()
    }
}
