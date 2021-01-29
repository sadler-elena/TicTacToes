//
//  SceneDelegate.swift
//  TicTacToes
//
//  Created by Elena Sadler on 1/27/21.
//

import UIKit
import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let viewModel = BoardViewModel(board: GameBoard())

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView().environmentObject(viewModel))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
