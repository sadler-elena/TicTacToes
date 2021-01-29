//
//  GameSquare.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import Foundation

struct GameSquare: Identifiable {
    var state: SquareState
    var id = UUID()
}
