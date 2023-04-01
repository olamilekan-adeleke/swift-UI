//
//  RhombusApp.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

struct RhombusApp: View {
    var body: some View {
        Rhombus()
            .fill(.teal)
//            .stroke(.teal)
            .aspectRatio(0.7, contentMode: .fit)
            .padding(.horizontal, 15)
    }
}

struct RhombusApp_Previews: PreviewProvider {
    static var previews: some View {
        RhombusApp()
    }
}

struct Rhombus: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))

            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))

            path.closeSubpath()
        }
    }
}
