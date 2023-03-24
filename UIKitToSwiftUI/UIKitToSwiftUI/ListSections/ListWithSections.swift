//
//  ListWithSections.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 08/03/2023.
//

import SwiftUI

struct ListWithSections: View {
    var body: some View {
        List {
            Section(header: Text("North American")) {
                Text("USA")
                Text("Canada")
                Text("Mexico")
                Text("Panama")
                Text("Anguilla")
            }

            Section(header: Text("Africa")) {
                Text("Nigeria")
                Text("Ghana")
                Text("Kenya")
                Text("Senegal")
            }

            Section(header: Text("Europe")) {
                Text("Spain")
                Text("France")
                Text("Sweden")
                Text("Finland")
                Text("UK")
            }
        }
    }
}

struct ListWithSections_Previews: PreviewProvider {
    static var previews: some View {
        ListWithSections()
    }
}
