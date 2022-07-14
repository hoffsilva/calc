//
//  SceneDelegate.swift
//  Calc
//
//  Created by Hoff Silva on 2022-07-14.
//

import UI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        configureWindow(with: scene)
    }
    
    func configureWindow(with scene: UIWindowScene) {
        window = UIWindow(windowScene: scene)
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController(viewCodable: HomeView())
    }
    
}

