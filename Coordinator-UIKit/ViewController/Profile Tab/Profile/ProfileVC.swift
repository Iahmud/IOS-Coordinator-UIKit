//
//  ProfileVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 16/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class ProfileVC: BaseProfileVC {

    @IBOutlet weak var labStatus: UILabel!
    var isOnline = false
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatus(isOnline)
    }
    
    func setStatus(_ isOnline:Bool)
    {
        let status = isOnline ? "Yes":"No"
        labStatus.text = "isOnline : \(status)"
        labStatus.backgroundColor = isOnline ? .green:.red
    }

    

    @IBAction func btnProfileDetails(_ sender: Any) {
        coordinator?.profileDetails(isOnline: isOnline) { [weak self] isOnline in
            guard let self = self else {return}
            self.isOnline = isOnline
            self.setStatus(isOnline)
            self.coordinator?.pop()
        }
    }
    

}
