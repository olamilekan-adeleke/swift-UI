//
//  EditableListsFields.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 08/03/2023.
//

import SwiftUI

struct EditableListsFields: View {
    @State var todos = [TodoItem("Eat"), TodoItem("Sleep"), TodoItem("Code")]

    var body: some View {
        List($todos) { $todo in
            TextField("Number", text: $todo.title)
        }
    }
}

struct EditableListsFields_Previews: PreviewProvider {
    static var previews: some View {
        EditableListsFields()
    }
}

// MARK: TodoItem Model

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String

    init(_ someTitle: String) {
        self.title = someTitle
    }
}
