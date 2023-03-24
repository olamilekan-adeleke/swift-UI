//
//  ListRowAdd.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 08/03/2023.
//

import SwiftUI

struct ListRowAdd: View {
    @State var number: [Int] = [1, 2, 3, 4]

    var body: some View {
        NavigationView {
            List {
                ForEach(self.number, id: \.self) { number in
                    Text("\(number)")
                }
            }
            .navigationBarTitle("Number List", displayMode: .inline)
            .navigationBarItems(trailing: Button("Add", action: self.addNumber))
        }
    }

    private func addNumber() {
        self.number.append(Int.random(in: 5 ..< 100))
    }
}

struct ListRowAdd_Previews: PreviewProvider {
    static var previews: some View {
        ListRowAdd()
    }
}
