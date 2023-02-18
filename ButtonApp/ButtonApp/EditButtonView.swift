//
//  EditButtonView.swift
//  ButtonApp
//
//  Created by Enigma Kod on 13/02/2023.
//

import SwiftUI

struct EditButtonView: View {
    @State private var animals = ["Cat", "Dog", "Goats", "Pig"]

    var body: some View {
        NavigationView {
            List {
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }.onDelete(perform: removeAnimal(at:))
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Edit Button View"), displayMode: .inline)
        }
    }

    func removeAnimal(at offset: IndexSet) {
        animals.remove(atOffsets: offset)
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
