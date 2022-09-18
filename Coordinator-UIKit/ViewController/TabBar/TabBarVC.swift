//
//  TabBarVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class TabBarVC: UITabBarController, UITabBarControllerDelegate {
    
    let main = HomeCoordinator(navigationController: UINavigationController())
    let profile = ProfileCoordinator(navigationController: UINavigationController())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        main.start()
        profile.start()
        
        
        
        viewControllers = [main.navigationController,
                           profile.navigationController]
        
        
        tabBar.unselectedItemTintColor = .white
        tabBar.layer.cornerRadius = 25
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.withAlphaComponent(0.3).cgColor //UIColor.clear.cgColor
        tabBar.layer.shadowRadius = 5
        tabBar.layer.shadowOpacity = 0.5
        tabBar.layer.shadowOffset = CGSize(width: -1, height: 1)
        tabBar.layer.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        
        tabBar.backgroundColor = .black
        tabBar.tintColor = .orange
        self.delegate = self
        
    }
    
    
    
    
    
    
    
}
