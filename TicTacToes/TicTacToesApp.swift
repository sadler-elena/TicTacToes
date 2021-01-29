//
//  TicTacToesApp.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/20/21.
//
import SwiftUI

@main
struct TicTacToesApp: App {
    @StateObject private var viewModel = BoardViewModel(board: GameBoard())
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
