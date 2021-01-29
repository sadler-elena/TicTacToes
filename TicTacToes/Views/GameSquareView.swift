//
//  GameSquare.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/20/21.
//

import SwiftUI

struct GameSquareView: View {
    var gameSquare: SquareState
    var frameSize: CGFloat
    var body: some View {
        ZStack {
            self.gameSquare.color
            
            Text(self.gameSquare.symbol)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .frame(width: self.frameSize, height: self.frameSize)
        .cornerRadius(12)
    }
}

