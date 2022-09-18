//
//  LoginVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class LoginVC: BaseStartVC {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnHome(_ sender: Any) {
        coordinator?.home()
    }
    
}
