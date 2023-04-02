//
//  ChartModel.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 02/04/2023.
//

import Foundation

enum Month: String, CaseIterable {
    case jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
}

struct MonthDataPoint: Identifiable {
    var id: String { month.rawValue }
    let month: Month
    let value: Double
    var name: String { month.rawValue.capitalized }
}

extension Array where Element == Double {
    func monthDataPoints() -> [MonthDataPoint] {
        zip(Month.allCases, self).map(MonthDataPoint.init)
    }
}

enum DataSet {
    static let dublin = [
        0.65, 0.50, 0.55, 0.55, 0.60, 0.65,
        0.55, 0.75, 0.60, 0.80, 0.75, 0.75
    ].monthDataPoints()

    static let milan = [
        0.65, 0.65, 0.80, 0.80, 0.95, 0.65,
        0.70, 0.95, 0.70, 1.00, 1.00, 0.60
    ].monthDataPoints()

    static let london = [
        0.55, 0.40, 0.40, 0.45, 0.50, 0.45,
        0.45, 0.50, 0.50, 0.70, 0.60, 0.55
    ].monthDataPoints()
}
