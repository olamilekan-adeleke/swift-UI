//
//  PresentingConfirmationDialogs.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct PresentingConfirmationDialogs: View {
    @State private var showDialog = false
    let title: String = "Confirmation Dialog"

    var body: some View {
        Button("Show Confrimation Dialog") {
            showDialog = true
        }
        .confirmationDialog(title, isPresented: $showDialog) {
            Button("Dismiss Dailog", role: .destructive) {}
            Button("Save") {}
            Button("Cancel", role: .cancel) {}
            Button("Print something") {}
        } message: {
            Text("""
            Use Dialogs to give users alternatives for
            completing a task
            """)
        }
    }
}

struct PresentingConfirmationDialogs_Previews: PreviewProvider {
    static var previews: some View {
        PresentingConfirmationDialogs()
    }
}
