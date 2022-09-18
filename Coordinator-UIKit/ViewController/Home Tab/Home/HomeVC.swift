//
//  HomeVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class HomeVC: BaseHomeVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSelectColor(_ sender: Any) {
        coordinator?.selectColor{ [weak self] color in
            guard let self = self else {return}
            self.view.backgroundColor = color
            self.coordinator?.dismiss()
        }
    }
    
}
