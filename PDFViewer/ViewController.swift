//
//  ViewController.swift
//  PDFViewer
//
//  Created by MacBook on 06/11/24.
//

import UIKit

class ViewController: UITabBarController {
    
    private var activeTabbar: Int = 0
    private var app: AppModule!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addTabbarView()
        self.navigationController?.isNavigationBarHidden = true
    }

    func addTabbarView() {
        app = try! AppModule()
        var arrayOfController: [UIViewController] = []
        // Library
        let libraryViewController = app.library.rootViewController
        libraryViewController.tabBarItem = makeItem(title: "bookshelf_tab", image: "bookshelf")

        // OPDS Feeds
        let opdsViewController = app.opds.rootViewController
        opdsViewController.tabBarItem = makeItem(title: "catalogs_tab", image: "catalogs")

        // About
        let aboutViewController = app.aboutViewController
        aboutViewController.tabBarItem = makeItem(title: "about_tab", image: "about")

        arrayOfController.append(libraryViewController)
        arrayOfController.append(opdsViewController)
        arrayOfController.append(aboutViewController)
        setViewControllers(arrayOfController, animated: true)
    }

    func makeItem(title: String, image: String) -> UITabBarItem {
        UITabBarItem(
            title: NSLocalizedString(title, comment: "Library tab title"),
            image: UIImage(named: image),
            tag: 0
        )
    }

}
