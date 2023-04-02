//
//  RadialGradient.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

struct RadialGradientView: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.orange, .green, .blue, .black]),
                center: UnitPoint.center,
                startRadius: 50,
                endRadius: 500
            )

            Text("Radial Gradienr").bigLight()
        }
    }
}

struct RadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientView()
    }
}
