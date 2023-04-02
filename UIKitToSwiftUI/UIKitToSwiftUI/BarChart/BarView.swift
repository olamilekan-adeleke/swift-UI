//
//  BarView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 02/04/2023.
//

import SwiftUI

struct BarView: View {
    var dataPoint: MonthDataPoint

    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Rectangle().fill(.blue)
                    .frame(width: 18, height: 180)

                Rectangle().fill(.white)
                    .frame(width: 18, height: dataPoint.value * 180)
            }

            Text(dataPoint.name)
                .frame(width: 20)
                .font(.system(size: 10))
                .rotationEffect(.degrees(-90))
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(dataPoint: MonthDataPoint(month: Month.may, value: 0.34))
    }
}
