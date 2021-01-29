//
//  ContentView.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/20/21.
//
import SwiftUI

struct ContentView: View {

    @EnvironmentObject var viewModel: BoardViewModel
    
    var gameResult: GameResult? {
        if case GameState.gameOver(let result) = viewModel.state {
            return result
        }
        return nil
    }
    
    var body: some View {
        ZStack() {
            if gameResult != nil {
                GameOverAlert(title: gameResult?.resultString ?? "", squareState: gameResult?.winningSquare ?? .unclaimed, action: {
                    self.viewModel.resetGame()
                })
            } else {
                ScreenModel()
                    .environmentObject(viewModel)
            }
            
            
        }
            
            
        }
       
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
