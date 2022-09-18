//
//  BaseVC.swift
//  Coordinator-UIKit
//
//  Created by Islam Ahmed on 15/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class BaseVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBaseViewsLayout()
        setupststusBar()
        // Do any additional setup after loading the view.
    }
    
    
    func setupBaseViewsLayout() {
        self.view.backgroundColor = #colorLiteral(red: 0.9372549653, green: 0.9372549057, blue: 0.9372549057, alpha: 1)
    }
  
    
    func setupststusBar() {
           let app = UIApplication.shared
           let statusBarHeight: CGFloat = app.statusBarFrame.size.height

           let statusbarView = UIView()
        statusbarView.backgroundColor = #colorLiteral(red: 0.9403962493, green: 0.9689295888, blue: 0.9949107766, alpha: 1)
           view.addSubview(statusbarView)

           statusbarView.translatesAutoresizingMaskIntoConstraints = false
           statusbarView.heightAnchor
             .constraint(equalToConstant: statusBarHeight).isActive = true
           statusbarView.widthAnchor
             .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
           statusbarView.topAnchor
             .constraint(equalTo: view.topAnchor).isActive = true
           statusbarView.centerXAnchor
             .constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
    
    
}
