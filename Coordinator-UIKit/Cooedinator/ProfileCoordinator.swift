//
//  ProfileCoordinator.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class ProfileCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    var isAnimated = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    func start() {
        let vc = ProfileVC.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile"), tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: isAnimated)
        
    }
    
    func profileDetails( isOnline:Bool, didEdit: @escaping ((Bool) -> Void)) {
        let vc = ProfileDetailsVC.instantiate()
        vc.coordinator = self
        vc.isOnline = isOnline
        vc.didEdit = didEdit
        navigationController.pushViewController(vc, animated: isAnimated)
    }
    
    func pop() {
        navigationController.popViewController(animated: isAnimated)
    }


    
}
