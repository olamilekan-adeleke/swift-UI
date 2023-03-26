//
//  Currency.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import Foundation

struct Currency: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

var currencies = [
    Currency(name: "Dollar", image: "dollarsign.circle.fill"),
    Currency(name: "Sterling", image: "sterlingsign.circle.fill"),
    Currency(name: "Euro", image: "eurosign.circle.fill"),
    Currency(name: "Yen", image: "yensign.circle.fill"),
    Currency(name: "Naira", image: "nairasign.circle.fill")
]
