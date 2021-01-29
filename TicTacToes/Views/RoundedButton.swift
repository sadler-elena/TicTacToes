//
//  RoundedButton.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/27/21.
//

import SwiftUI

struct RoundedButton: View {

    let title: String
    let backgroundColor: Color
    let foregroundColor: Color
    let font: Font
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(title)
                .padding()
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .font(font)
                .cornerRadius(10)
        }
    }
}

