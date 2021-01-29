//
//  GameBoard.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import Foundation

struct GameBoard {
    var squares: [GameSquare]
    
    init() {
        self.squares = Array(repeating: GameSquare(state: .unclaimed), count: 9)
    }
    
    func tilesToCheck(index: Int) -> [[GameSquare]] {
        var verticalRow: [GameSquare]
        var horizontalRow: [GameSquare]
        var diagonalRow: [GameSquare]
        var tileList: [[GameSquare]] = [[GameSquare]]()
        
        if index == 0 || index == 4 || index == 8 {
            diagonalRow = [squares[0], squares[4], squares[8]]
            tileList.append(diagonalRow)
        }
        
        if index == 2 || index == 4 || index == 6 {
            diagonalRow = [squares[2], squares[4], squares[6]]
            tileList.append(diagonalRow)
        }
        
        switch index {
        case 0:
            horizontalRow = [squares[0], squares[1], squares[2]]
            verticalRow = [squares[0], squares[3], squares[6]]
        case 1:
            horizontalRow = [squares[0], squares[1], squares[2]]
            verticalRow = [squares[1], squares[4], squares[7]]
        case 2:
            horizontalRow = [squares[0], squares[1], squares[2]]
            verticalRow = [squares[2], squares[5], squares[8]]
        case 3:
            horizontalRow = [squares[3], squares[4], squares[5]]
            verticalRow = [squares[0], squares[3], squares[6]]
        case 4:
            horizontalRow = [squares[3], squares[4], squares[5]]
            verticalRow = [squares[1], squares[4], squares[7]]
        case 5:
            horizontalRow = [squares[3], squares[4], squares[5]]
            verticalRow = [squares[2], squares[5], squares[8]]
        case 6:
            horizontalRow = [squares[6], squares[7], squares[8]]
            verticalRow = [squares[0], squares[3], squares[6]]
        case 7:
            horizontalRow = [squares[6], squares[7], squares[8]]
            verticalRow = [squares[1], squares[4], squares[7]]
        case 8:
            horizontalRow = [squares[6], squares[7], squares[8]]
            verticalRow = [squares[2], squares[5], squares[8]]
        default:
            fatalError("Index out of bounds")
        }
        tileList.append(horizontalRow)
        tileList.append(verticalRow)
        return tileList

        
    }
}
