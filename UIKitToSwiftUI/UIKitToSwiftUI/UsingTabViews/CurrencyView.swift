//
//  CurrencyView.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 26/03/2023.
//

import SwiftUI

struct CurrencyView: View {
    var body: some View {
        NavigationView {
            VStack {
                ForEach(currencies) { currency in
                    HStack {
                        Group {
                            Text(currency.name)
                            Spacer()
                            Image(systemName: currency.image)
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 2)
                        .font(
                            Font.system(size: 20, design: Font.Design.monospaced)
                        )
                    }
                }
            }
            .navigationBarTitle("Currencies")
        }
    }
}

struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
