//
//  TodoUIView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 09/04/2023.
//

import SwiftUI

struct TodoUIView: View {
    @State private var todos = [
        TodoModel(description: "review the next chapter", done: false),
        TodoModel(description: "buy food for iftar", done: false),
        TodoModel(description: "wash plate", done: false),
        TodoModel(description: "stream anime", done: false),
        TodoModel(description: "think about woman", done: false),
        TodoModel(description: "go touch some the grass", done: false),
    ]

    var body: some View {
        NavigationView {
            List($todos) { $todo in
                HStack {
                    Text(todo.description)
                        .strikethrough(todo.done)
                    Spacer()
                    Image(systemName: todo.done ? "checkmark.square" : "square")
                }
                .contentShape(Rectangle())
                .onTapGesture { todo.done.toggle() }
            }
            .navigationBarTitle("Todos")
        }
    }
}

struct TodoUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodoUIView()
    }
}
