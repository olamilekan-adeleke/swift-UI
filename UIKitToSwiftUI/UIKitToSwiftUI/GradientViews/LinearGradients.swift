//
//  LinearGradients.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

struct LinearGradients: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.green, .blue, .black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Text("Linear Gradient").bigLight()
        }
    }
}

struct LinearGradients_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradients()
    }
}
