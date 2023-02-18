//
//  ContentView.swift
//  ImageApp
//
//  Created by Enigma Kod on 12/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("dogs1")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                .shadow(radius: 10)

            Image(uiImage: getImageFromUIImage(with: "dog2"))
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
        }
    }

    func getImageFromUIImage(with image: String) -> UIImage {
        guard let image = UIImage(named: image) else {
            fatalError("Unable to load image")
        }

        return image
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
