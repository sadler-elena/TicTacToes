//
//  ScreenModel.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/27/21.
//

import SwiftUI

struct ScreenModel: View {
    @EnvironmentObject var viewModel: BoardViewModel
    var body: some View {
        ZStack {
            Color.white
            edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Tic-Tac-Toes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                Text("\(viewModel.state.currentSquare.symbol)'s Turn")
                    .font(.headline)
                    .fontWeight(.semibold)
                Divider()
                GridView()
                    .environmentObject(viewModel)
                
            }
        }
    }
}

struct ScreenModel_Previews: PreviewProvider {
    static var previews: some View {
        ScreenModel()
    }
}
