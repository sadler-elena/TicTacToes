//
//  BoardViewModel.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import SwiftUI
import Combine

final class BoardViewModel: ObservableObject {
    
    @Published var board: GameBoard
    @Published var state: GameState
    
    init(board: GameBoard) {
        self.board = board
        self.state = .playerOneTurn
    }
    func claimTile(newSquareIndex: Int) {
        if (self.board.squares[newSquareIndex].state == .unclaimed) {
            self.board.squares[newSquareIndex].state = state.currentSquare
        }
        updateState(newSquareIndex: newSquareIndex)

    }
    private func updateState(newSquareIndex: Int) {

        let winCheckResult = WinChecker(board: board, squareIndex: newSquareIndex).result
        switch winCheckResult {
        case .win(let squareState):
            state = .gameOver(.win(squareState))
        case .draw:
            state = .gameOver(.draw)
        case .none:
            state = state.nextTurn()
        }
    }
}


extension BoardViewModel {
    func resetGame() {
        board.squares.removeAll()
        board.squares = Array(repeating: GameSquare(state: .unclaimed), count: 9)
        state = .playerOneTurn
    }
}
