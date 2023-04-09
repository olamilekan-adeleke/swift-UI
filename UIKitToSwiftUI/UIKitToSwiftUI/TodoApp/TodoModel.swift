//
//  TodoModel.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 09/04/2023.
//

import Foundation

struct TodoModel: Identifiable {
    let id: String = UUID().uuidString
    var description: String
    var done: Bool
}
