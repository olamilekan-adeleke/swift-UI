//
//  SignUpView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 23/03/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var fname = ""
    @State private var lname = ""
    @State private var street = ""
    @State private var city = ""
    @State private var zip = ""
    @State private var lessThanTwo = false
    @State private var username = ""
    @State private var passsword = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Names")) {
                    TextField("First Name", text: $fname)
                    TextField("Last Name", text: $lname)
                }

                Section(header: Text("Current Address")) {
                    TextField("Strees Address", text: $street)
                    TextField("City", text: $city)
                    TextField("Zip", text: $zip)
                }

                Toggle(isOn: $lessThanTwo) {
                    Text("Have you lived here for 2+ yesrs")
                }

                if lessThanTwo == false {
                    Section("Previous Address") {
                        TextField("Strees Address", text: $street)
                        TextField("City", text: $city)
                        TextField("Zip", text: $zip)
                    }
                }

                Section(header: Text("Create Account Info")) {
                    TextField("Create Username", text: $username)
                    SecureField("Password", text: $passsword)
                }

                Button("Create Account") {
                    print("Form Submited!")
                }
                .buttonStyle(TealButtonStyle())
                .listRowBackground(Color(UIColor.systemGroupedBackground))
            }
            .navigationTitle("Sign Up")
            .listStyle(.plain)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct TealButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: .infinity)
            .padding()
            .background(Color.teal)
            .foregroundColor(Color.white)
            .cornerRadius(5)
            .buttonStyle(.borderedProminent)
    }
}
