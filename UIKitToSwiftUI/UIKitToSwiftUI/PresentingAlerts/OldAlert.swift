//
//  OldAlert.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct OldAlert: View {
    @State private var showAlert = false

    var body: some View {
        Button("Show Alert") {
            self.showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Confrim Action"),
                message: Text("Are yous ure you want to submit this shitty code?"),
                dismissButton: .default(Text("Okay nah"))
            )
        }
    }
}

struct OldAlert_Previews: PreviewProvider {
    static var previews: some View {
        OldAlert()
    }
}
