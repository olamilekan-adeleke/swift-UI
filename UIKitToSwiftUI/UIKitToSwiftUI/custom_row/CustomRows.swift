//
//  CustomRows.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 07/03/2023.
//

import SwiftUI

struct CustomRows: View {
    var body: some View {
        List{
            ForEach(weatherData) { weather in
                WeatherRow(weather)
            }
        }
    }
}

struct CustomRows_Previews: PreviewProvider {
    static var previews: some View {
        CustomRows()
    }
}
