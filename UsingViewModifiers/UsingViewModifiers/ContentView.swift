//
//  ContentView.swift
//  UsingViewModifiers
//
//  Created by Enigma Kod on 15/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .backGroundStyle(color: Color.teal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackGroundStyle: ViewModifier {
    var bgColor: Color

    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.5, height: 20)
            .foregroundColor(Color.black)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(10))
    }
}

extension View{
    func backGroundStyle(color: Color) -> some View {
        self.modifier(BackGroundStyle(bgColor: color))
    }
}
