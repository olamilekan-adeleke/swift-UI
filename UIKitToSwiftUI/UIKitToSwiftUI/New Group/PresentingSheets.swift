//
//  PresentingSheets.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct PresentingSheets: View {
    @State private var showSheet = false
    @State private var showSheetWithNav = false

    var body: some View {
        VStack {
            Button("Display Sheet") {
                self.showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                SheetView()
            }
            
            Button("Sheet With Navigation"){
                self.showSheetWithNav = true
            }
            .sheet(isPresented: $showSheetWithNav) {
                SheetWithNavView(sheetWithNav: $showSheetWithNav)
            }
        }
    }
}

struct PresentingSheets_Previews: PreviewProvider {
    static var previews: some View {
        PresentingSheets()
    }
}
