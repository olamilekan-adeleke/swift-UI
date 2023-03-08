//
//  WeScroll.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 07/03/2023.
//

import SwiftUI

struct WeScroll: View {
    let letters: [String] = [
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
        "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "z"
    ]

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Hello World, How Do You Do")
                    .font(.title2)
                    .bold()

                Text("Hello MotherFuckers")
                    .font(.footnote)
                    .opacity(0.7)
                    .foregroundColor(Color.gray)
            }

            Spacer().frame(height: 50)

            ScrollView {
                VStack{
                    ForEach(letters, id: \.self) { letter in
                        Image(systemName: letter)
                            .font(.largeTitle)
                            .foregroundColor(Color.teal)
                            .frame(width: 50, height: 50)
                            .background(.gray.opacity(0.3))
                            .symbolVariant(.circle.fill)
                    }
                }
            }
            .frame(width: .infinity, height: 200)

            Spacer().frame(height: 50)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(letters, id: \.self) { letter in
                        Image(systemName: letter)
                            .font(.largeTitle)
                            .foregroundColor(Color.teal)
                            .frame(width: 50, height: 50)
                            .background(.gray.opacity(0.3))
                            .symbolVariant(.circle.fill)
                    }
                }
            }
        }
        .padding([.leading, .trailing], 20)
        .padding([.top], 40)
    }
}

struct WeScroll_Previews: PreviewProvider {
    static var previews: some View {
        WeScroll()
    }
}
