//
//  TabView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .indexViewStyle(.page(backgroundDisplayMode: .always))

            CurrencyView()
                .tabItem {
                    Label("Currencies", systemImage: "coloncurrencysign.circle.fill")
                }
        }
//        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
