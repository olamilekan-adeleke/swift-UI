//
//  MyListTile.swift
//  UsingViewBuilder
//
//  Created by Enigma Kod on 15/02/2023.
//

import SwiftUI

struct MyListTile<Content: View>: View {
    let context: Content

    init(@ViewBuilder context: () -> Content) {
        self.context = context()
    }

    var body: some View {
        HStack {
            context
            Spacer()
            Image(systemName: "square.and.arrow.down")
        }
    }
}
