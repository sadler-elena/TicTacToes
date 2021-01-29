//
//  WinChecker.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/25/21.
//

import Foundation


struct WinChecker {
    
    let board: GameBoard
    let squareIndex: Int
    
    var result: GameResult? {
        return checkEndGame()
    }
    

    //function to check if the game is over
    private func checkEndGame() -> GameResult? {
        if (isGameDraw(board: self.board.squares)) {
            return .draw
        }
        var checkForWin = isWinner(squares: self.board.tilesToCheck(index: squareIndex))
        switch checkForWin {
        case .playerOne:
            return GameResult.win(.playerOne)
        case .playerTwo:
            return GameResult.win(.playerTwo)
        case .unclaimed:
            return nil
        }

    }
    
    
    //function to check for a draw by seeing if there are any unclaimed game squares
    private func isGameDraw(board: [GameSquare]) -> Bool {
        for square in board {
            if square.state == .unclaimed {
                return false
            }
        }
        return true
    }
    
    
    
    //function to check for win by checking for rows with matching symbols
    private func isWinner(squares: [[GameSquare]]) -> SquareState {
        for row in squares {
            var playerOneWins = row.allSatisfy({$0.state == .playerOne})
            if (playerOneWins) {
                return SquareState.playerOne
            }
            var playerTwoWins = row.allSatisfy({$0.state == .playerTwo})
            if (playerTwoWins) {
                return SquareState.playerTwo
            }

        }
        return SquareState.unclaimed
    }

}
