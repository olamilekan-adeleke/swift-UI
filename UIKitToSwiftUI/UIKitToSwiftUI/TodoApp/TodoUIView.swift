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
            ZStack(alignment: .bottom) {
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
                InputTodoView(todos: $todos)
            }
            .navigationBarTitle("Todos")
        }
    }
}

struct InputTodoView: View {
    @State private var todoDes = ""
    @Binding var todos: [TodoModel]

    var body: some View {
        HStack {
            TextField("Enter Todo", text: $todoDes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Button {
                if todoDes.isEmpty { return }

                let todo = TodoModel(description: todoDes, done: false)
                todos.append(todo)
                todoDes = ""
            } label: {
                Text("Add")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .background(todoDes.isEmpty ? .gray : .green)
                    .cornerRadius(5)
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
        .background(.gray.opacity(0.3))
    }
}

struct TodoUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodoUIView()
    }
}
