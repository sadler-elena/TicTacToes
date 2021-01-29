//
//  GameState.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import Foundation

enum GameState: Equatable {
    
    case playerOneTurn
    case playerTwoTurn
    case gameOver(GameResult)
    
    
    var currentSquare: SquareState {
        switch self {
        case .playerOneTurn:
            return .playerOne
        case .playerTwoTurn:
            return .playerTwo
        default:
            return .unclaimed
        }
    }
    
    func nextTurn() -> GameState {
        switch self {
        case .playerOneTurn:
            return .playerTwoTurn
        case .playerTwoTurn:
            return .playerOneTurn
        default:
            fatalError("Something went wrong")
        }
    }
}
