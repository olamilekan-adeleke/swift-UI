//
//  HomeView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct HomeView: View {
    let games = [
        "Doom", "Final F", "Cyberpunk", "avengers", "animal trivia", "sudoku",
        "snakes and ladders", "Power rangers", "ultimate frisbee", "football",
        "soccer", "much more"
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(games, id: \.self) { game in
                    Text(game)
                }
            }
            .listStyle(.sidebar)
            .navigationBarTitle("Best Game for 2021", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
