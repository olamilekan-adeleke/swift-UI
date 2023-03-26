//
//  SheetWithNavView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct SheetWithNavView: View {
    @Binding var sheetWithNav: Bool

    var body: some View {
        NavigationView {
            Text("Sheet WIth Navigation")
                .navigationBarTitle(Text("Sheet Title"), displayMode: .inline)
                .navigationBarItems(trailing: Button("Done") {
                    self.sheetWithNav = false
                })
        }
    }
}

//
 struct SheetWithNavView_Previews: PreviewProvider {
    static var previews: some View {
        SheetWithNavView(sheetWithNav: .constant(true))
    }
 }
