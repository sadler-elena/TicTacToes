//
//  GameSquare.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/20/21.
//

import SwiftUI

struct GameSquareView: View {
    @State var gameSquare: SquareState
    var frameSize: CGFloat
    var body: some View {
        ZStack {
            self.gameSquare.color
            
            Text(self.gameSquare.symbol)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: self.frameSize, height: self.frameSize)
        .cornerRadius(12)
    }
}

struct GameSquare_Previews: PreviewProvider {
    static var previews: some View {
        GameSquareView(gameSquare: SquareState.playerOne, frameSize: 30)
    }
}
