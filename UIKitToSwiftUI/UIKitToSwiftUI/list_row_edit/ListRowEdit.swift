//
//  ListRowEdit.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 08/03/2023.
//

import SwiftUI

struct ListRowEdit: View {
    @State var names = ["Ola", "Emoji", "Yetunde", "Bob", "John", "Nike"]

    var body: some View {
        NavigationView {
            List {
                ForEach(self.names, id: \.self) { name in
                    Text(name)
                }
                .onMove(perform: self.moveItem)
            }
            .navigationBarTitle("List Moving", displayMode: .inline)
            .navigationBarItems(trailing: EditButton())
        }
    }

    private func moveItem(from: IndexSet, to: Int) {
        self.names.move(fromOffsets: from, toOffset: to)
    }
}

struct ListRowEdit_Previews: PreviewProvider {
    static var previews: some View {
        ListRowEdit()
    }
}
