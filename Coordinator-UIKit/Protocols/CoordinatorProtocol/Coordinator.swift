//
//  Coordinator.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

protocol Coordinator : AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
