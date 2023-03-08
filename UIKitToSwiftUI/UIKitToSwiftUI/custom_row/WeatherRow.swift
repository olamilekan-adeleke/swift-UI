//
//  WeatherRow.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 07/03/2023.
//

import SwiftUI

struct WeatherRow: View {
    var weater: WeatherInfo

    init(_ weater: WeatherInfo) {
        self.weater = weater
    }

    var body: some View {
        HStack {
            Image(systemName: weater.image)
                .font(.system(size: 20))
                .frame(width: 50, alignment: .leading)

            Text(weater.city)
                .font(.system(size: 18))
                .opacity(0.7)

            Spacer()

            Text("\(weater.temp) ºF")
                .frame(width: 80, alignment: .trailing)
                .font(.system(size: 14))
                .opacity(0.5)
        }
        .padding([.leading, .trailing])
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(weatherData[0])
    }
}
