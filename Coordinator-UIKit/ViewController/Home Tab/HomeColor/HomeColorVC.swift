//
//  HomeColorVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class HomeColorVC: BaseHomeVC {

    var didSelect: ((UIColor) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        coordinator?.dismiss()
    }
    
    @IBAction func btnRed(_ sender: Any) {
        didSelect?(.red)
    }
    
    @IBAction func btnGreen(_ sender: Any) {
        didSelect?(.green)
    }
    
    @IBAction func btnBlue(_ sender: Any) {
        didSelect?(.blue)
    }
    
}
