//
//  BlueCircle.swift
//  UsingViewBuilder
//
//  Created by Enigma Kod on 15/02/2023.
//

import SwiftUI

struct BlueCircle<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)

        }.padding()
    }
}
