//
//  GradientTabView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 02/04/2023.
//

import SwiftUI

struct GradientTabView: View {
    @State private var selectedGradient: Int = 0

    @ViewBuilder var contentBody: some View {
        switch selectedGradient {
            case 0: LinearGradients()
            case 1: RadialGradientView()
            case 2: AngularGradientView()

            default: LinearGradients()
        }
    }

    var body: some View {
        ZStack(alignment: .top) {
            contentBody.edgesIgnoringSafeArea(.all)

            Picker(selection: $selectedGradient, label: Text("Select Gradeint")) {
                Text("Linear").tag(0)
                Text("Radial").tag(1)
                Text("Augular").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 30)
        }
    }
}

struct GradientTabView_Previews: PreviewProvider {
    static var previews: some View {
        GradientTabView()
    }
}
