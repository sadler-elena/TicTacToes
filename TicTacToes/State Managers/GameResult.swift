//
//  GameResult.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import Foundation


enum GameResult: Equatable {
    case win(SquareState)
    case draw
    
    var winningSquare: SquareState {
        switch self {
        case .win(let state):
            return state
        case .draw:
            return .unclaimed
        }
    }
    
    var resultString: String {
        switch self {
        case .win(let state):
            switch state {
            case .playerOne:
                return "Player one wins"
            case .playerTwo:
                return "Player two wins"
            default:
                fatalError("Winning square cannot be vacant!")
            }
        case .draw:
            return "Draw!"
        }
    }
}
