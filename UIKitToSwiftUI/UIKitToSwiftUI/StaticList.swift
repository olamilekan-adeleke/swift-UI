//
//  StaticList.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 07/03/2023.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                HStack {
                    Image(systemName: weather.image)
                        .frame(width: 50, alignment: .leading)

                    Text(weather.city)
                        .font(.system(size: 16))
                        .opacity(0.8)

                    Spacer()

                    Text("\(weather.temp) ºF")
                        .font(.system(size: 16))
                        .frame(alignment: .trailing)
                        .opacity(0.6)
                }
            }
        }
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
