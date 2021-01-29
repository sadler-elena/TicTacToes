//
//  SquareState.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/22/21.
//

import Foundation
import SwiftUI

enum SquareState {
    case playerOne
    case playerTwo
    case unclaimed
    
    var color: Color {
        switch self {
        case .playerOne:
            return .white
        case .playerTwo:
            return .white
        case .unclaimed:
            return .black
        }
    }
    
    var symbol: String {
        switch self {
        case .playerOne:
            return "X"
        case .playerTwo:
            return "O"
        case .unclaimed:
            return ""
        }
    }
}
