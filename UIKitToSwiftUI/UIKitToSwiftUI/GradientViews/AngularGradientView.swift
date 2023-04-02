//
//  AngularGradientView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 02/04/2023.
//

import SwiftUI

struct AngularGradientView: View {
    var body: some View {
        ZStack {
            AngularGradient(
                gradient: Gradient(colors: [Color.orange, .green, .blue, .black, .black, .blue, .green, .orange]),
                center: .center
            )

            Text("Angular Center").bigLight()
        }
    }
}

struct AngularGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
