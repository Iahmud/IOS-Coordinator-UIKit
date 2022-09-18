//
//  HomeCoordinator.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class HomeCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    var isAnimated = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    func start() {
        let vc = HomeVC.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: isAnimated)
        
    }

    func selectColor( didSelect: @escaping ((UIColor) -> Void)) {
        let vc = HomeColorVC.instantiate()
        vc.coordinator = self
        vc.didSelect = didSelect
        present(vc)
    }
    
    
    private func present(_ vc:UIViewController)
    {
        vc.modalPresentationStyle = .overFullScreen
        navigationController.present(vc, animated: isAnimated, completion: nil)
    }

    
    func dismiss() {
        navigationController.dismiss(animated: isAnimated)
    }
    
}
