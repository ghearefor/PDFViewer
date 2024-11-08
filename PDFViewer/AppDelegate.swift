//
//  AppDelegate.swift
//  PDFViewer
//
//  Created by MacBook on 06/11/24.
//

import Combine
import ReadiumShared
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    private var app: AppModule!
    private var subscriptions = Set<AnyCancellable>()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        app = try! AppModule()
//        
//        func makeItem(title: String, image: String) -> UITabBarItem {
//            UITabBarItem(
//                title: NSLocalizedString(title, comment: "Library tab title"),
//                image: UIImage(named: image),
//                tag: 0
//            )
//        }
//        
//
//        var arrayOfController: [UIViewController] = []
//        // Library
//        let libraryViewController = app.library.rootViewController
//        libraryViewController.tabBarItem = makeItem(title: "bookshelf_tab", image: "bookshelf")
//
//        // OPDS Feeds
//        let opdsViewController = app.opds.rootViewController
//        opdsViewController.tabBarItem = makeItem(title: "catalogs_tab", image: "catalogs")
//
//        // About
//        let aboutViewController = app.aboutViewController
//        aboutViewController.tabBarItem = makeItem(title: "about_tab", image: "about")
//
//        let tabBarController = UITabBarController()
//        arrayOfController.append(libraryViewController)
//        arrayOfController.append(opdsViewController)
//        arrayOfController.append(aboutViewController)
//        tabBarController.setViewControllers(arrayOfController, animated: false)
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        UIApplication.shared.keyWindow?.rootViewController = aboutViewController
//        window?.makeKeyAndVisible()
        
        
        let tabVC = ViewController.init(nibName: "Main", bundle: .main)
            UIApplication.shared.keyWindow?.rootViewController = tabVC
        
        return true
    }

    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        guard let url = url.absoluteURL, let vc = self.window?.rootViewController else {
            return false
        }

        Task {
            do {
                try await app.library.importPublication(from: url, sender: vc)
            } catch {
                guard let error = error as? UserErrorConvertible else {
                    print(error)
                    return
                }
                vc.alert(error)
            }
        }

        return true
    }
}


