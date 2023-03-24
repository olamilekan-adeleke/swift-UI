//
//  ListViewDelete.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 08/03/2023.
//

import SwiftUI

struct ListViewDelete: View {
    @State var names = ["Ola", "Emoji", "Yetunde", "Bob", "John", "Nike"]

    var body: some View {
        NavigationView {
            List {
                ForEach(self.names, id: \.self) { name in
                    Text(name)
                }
                .onDelete(perform: self.deleteAt)
            }
            .navigationBarTitle("Remove Item", displayMode: .inline)
        }
    }

    private func deleteAt(atIndex: IndexSet) {
        self.names.remove(atOffsets: atIndex)
    }
}

struct ListViewDelete_Previews: PreviewProvider {
    static var previews: some View {
        ListViewDelete()
    }
}
