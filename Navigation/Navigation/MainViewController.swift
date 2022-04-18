//
//  MainViewController.swift
//  Navigation
//
//  Created by Павел Афанасьев on 05.04.2022.
//

import UIKit

class MainViewController: UITabBarController {

    let firstNC = FeedViewController()
    let secondNC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers(){
        
        let firstNavController = UINavigationController(rootViewController: firstNC)
        firstNC.tabBarItem.title = "Лента"
        firstNC.tabBarItem.image = UIImage(systemName: "list.bullet")
        firstNC.navigationItem.title = "Лента"
        
        let secondNavController = UINavigationController(rootViewController: secondNC)
        secondNC.tabBarItem.title = "Профиль"
        secondNC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        secondNC.navigationItem.title = "Profile"
        
        viewControllers = [firstNavController, secondNavController]
    }
}
