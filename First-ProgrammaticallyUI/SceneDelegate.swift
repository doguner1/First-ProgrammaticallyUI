//
//  SceneDelegate.swift
//  First-ProgrammaticallyUI
//
//  Created by qwerty on 8/7/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //guard let _ = (scene as? UIWindowScene) else { return }
        /*
         _ kullanımı tanımlama yapıldığı vakit kullanmayacağımız vakitlerde kullanılır
         */
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        window.overrideUserInterfaceStyle = .light
        window.rootViewController = HomepageVC()
        self.window = window
    }

}

