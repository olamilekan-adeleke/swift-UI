//
//  ActivityIndicator.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 17/02/2023.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
        if animating {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}
