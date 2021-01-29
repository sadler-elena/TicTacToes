//
//  GameOverAlert.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/27/21.
//

import SwiftUI

struct GameOverAlert: View {
    let title: String
    let squareState: SquareState
    let action: () -> Void
    
    var body: some View {
        VStack {
            VStack {
                Text(title)
                    .foregroundColor(.black)
                    .font(.largeTitle).bold()
                GameSquareView(gameSquare: squareState, frameSize: 10)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            RoundedButton(title: "Reset Game",
                          backgroundColor: Color.white,
                          foregroundColor: Color.black,
                          font: .largeTitle) { self.action() }
            .offset(x: 0, y: 50)
        }
    }
}



