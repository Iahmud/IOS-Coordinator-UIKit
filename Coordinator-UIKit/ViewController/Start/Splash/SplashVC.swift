//
//  SplashVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class SplashVC: BaseStartVC {

    @IBOutlet weak var imgSplash: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imgSplash.layer.opacity = 0
        
        UIView.animate(withDuration: 2.0) {
            self.imgSplash.layer.opacity = 1
        } completion: { _ in
            self.coordinator?.login()
        }

    }


}
