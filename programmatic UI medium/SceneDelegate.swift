//
//  SceneDelegate.swift
//  programmatic UI medium
//
//  Created by Chiran Siriwardena on 5/8/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)    // set bounds to our scene
        window?.windowScene = windowScene
        window?.rootViewController = UINavigationController(rootViewController: MainView()) // set what is the root view controller of our application
        window?.makeKeyAndVisible() // make window visible
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}

