//
//  GridTest.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/20/21.
//

import SwiftUI

struct GridView: View {
    @EnvironmentObject var viewModel: BoardViewModel
    


    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 60) {
            ForEach(0..<9, id: \.self) { index in
                GameSquareView(gameSquare: self.viewModel.board.squares[index].state, frameSize: getWidth())
                    .onTapGesture(perform: {
                        self.viewModel.claimTile(newSquareIndex: index)
                    })
            }
            
            

        }
        .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

    }
    
    private func getWidth() -> CGFloat {
        let width = UIScreen.main.bounds.width - (30 + 30)
        return width / 3
    }
}
struct GridTest_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
