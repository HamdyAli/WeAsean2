//
//  CustomTab.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/17/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit

class CustomTab: UITabBar {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func viewWillLayoutSubviews() {
        
        self.navigationBar.frame = CGRect(x: 0, y: 0, width: 320, height: 50
        )
        
        super.viewWillLayoutSubviews()
    }

}
