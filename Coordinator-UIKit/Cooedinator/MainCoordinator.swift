//
//  MainCoordinator.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {

    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(true, animated: false)

    }
    var isAnimated = false
    
    func start() {
        navigationController.delegate = self
        let vc = SplashVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func login() {
        let vc = LoginVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: isAnimated)
        
    }
  
    func home() {
        let storyboard = UIStoryboard(name: "TabBarScreen", bundle: Bundle.main)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
        navigationController.pushViewController(tabBar, animated: isAnimated)
        
    }
 

   
    
}
