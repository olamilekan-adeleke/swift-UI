//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 23/03/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0 ... 1000, id: \.self) { item in
                        ListRow(id: item, type: "Horizontal")
                    }
                }
            }
            .frame(height: 100, alignment: .center)

            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(0 ... 1000, id: \.self) { item in
                        ListRow(id: item, type: "Vertical")
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct ListRow: View {
    let id: Int
    let type: String

    init(id: Int, type: String) {
        print("Loading \(type) item \(id)")
        self.id = id
        self.type = type
    }

    var body: some View {
        Text("\(type) \(id)").padding()
    }
}
