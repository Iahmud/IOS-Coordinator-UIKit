//
//  ProfileDetailsVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class ProfileDetailsVC: BaseProfileVC {

    var didEdit: ((Bool) -> Void)?

    @IBOutlet weak var outSwitchStatus: UISwitch!
    var isOnline = false
    override func viewDidLoad() {
        super.viewDidLoad()
        outSwitchStatus.setOn(isOnline, animated:true)

    }
    
    @IBAction func switchStatus(_ sender: UISwitch) {
        isOnline = sender.isOn
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        coordinator?.pop()
    }
    
    @IBAction func btnRed(_ sender: Any) {
        didEdit?(isOnline)
    }
    

}
