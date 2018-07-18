//
//  TabBarController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/12/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    @IBOutlet weak var navigationBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.frame = CGRect(origin: CGPoint(x: 0, y: 64), size: CGSize(width: 400, height: 500))
        
    }
    

}

