//
//  BuiltInShapes.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

struct BuiltInShapes: View {
    var body: some View {
        VStack(spacing: 16) {
            Rectangle().stroke(.teal, lineWidth: 15)

            RoundedRectangle(cornerRadius: 25).fill(.teal)

            Capsule(style: .continuous).fill(.green).frame(height: 100)

            Capsule(style: .circular).fill(.yellow).frame(height: 100)

            Circle().stroke(.blue, lineWidth: 15)

            Ellipse().fill(.purple)
        }
        .padding(.horizontal, 20)
    }
}

struct BuiltInShapes_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShapes()
    }
}
