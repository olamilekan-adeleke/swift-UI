//
//  extenstion.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

extension Text {
    func bigLight() -> some View {
        font(.system(size: 50))
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
}
