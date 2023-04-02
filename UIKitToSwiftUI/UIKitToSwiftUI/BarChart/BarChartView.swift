//
//  BarChartView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 02/04/2023.
//

import SwiftUI

struct BarChartContent: View {
    let dataSet = [DataSet.dublin, DataSet.milan, DataSet.london]
    @State var selectedCity = 0

    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            Text("Average Preciptaion")
                .font(.system(size: 30))

            Picker(selection: $selectedCity, label: Text("Average Preciptaion")) {
                Text("Dublin").tag(0)
                Text("Dublin").tag(1)
                Text("Dublin").tag(2)
            }
            .pickerStyle(.segmented)

            BarChartView(dataPoints: dataSet[selectedCity])

            Spacer()
        }
        .padding(.horizontal, 10)
        .background(.teal, ignoresSafeAreaEdges: .vertical)
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartContent()
    }
}

struct BarChartView: View {
    var dataPoints: [MonthDataPoint]

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            ForEach(dataPoints) { point in
                BarView(dataPoint: point)
            }
        }
    }
}
