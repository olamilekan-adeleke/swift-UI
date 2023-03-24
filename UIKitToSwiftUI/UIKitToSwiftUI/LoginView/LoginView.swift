//
//  LoginView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 24/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var passsword = ""

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Hi, Wecome Back! 👋")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .font(.title)
                    .padding([.top], 30)
                Text("Hello again, you’ve been missed!")
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                    .font(.subheadline)
            }

            Spacer().frame(height: 50)

            CustomForm(value: $username, title: "Username")
            Spacer().frame(height: 10)
            CustomForm(value: $passsword, title: "Password")
            Text("Frogot Password")
                .fontWeight(.medium)
                .foregroundColor(.purple)
                .opacity(0.7)
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .trailing)

            Spacer().frame(height: 40)

            GeometryReader { geometry in
                Button("Create Account") {
                    print("Form Submited!")
                }
                .frame(width: geometry.size.width, height: 50)
                .background(Color.purple)
                .foregroundColor(Color.white)
                .cornerRadius(6)
            }

            Spacer()
            HStack(alignment: .center) {
                Text("Don't have an account ?")
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                    .font(.subheadline)

                Text("Sign Up")
                    .fontWeight(.medium)
                    .foregroundColor(.purple)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding([.leading, .trailing], 10)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct CustomForm: View {
    let value: Binding<String>
    let title: String

    init(value: Binding<String>, title: String) {
        self.value = value
        self.title = title
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.thin)
                .foregroundColor(.black)
                .font(.subheadline)

            TextField(title, text: value).modifier(customViewModifier())
        }
    }
}

struct customViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background()
            .cornerRadius(6)
            .padding(3)
            .foregroundColor(.white)
            .font(.custom("Open Sans", size: 18))
            .overlay(RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray, lineWidth: 2.5))
            .opacity(0.5)
    }
}

// extension Color {
//
// }
