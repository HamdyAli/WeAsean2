//
//  CustomPageController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/13/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

//import Foundation
import UIKit

import PageController

class CustomPageController: PageController{
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        viewControllers = createViewControllers()
        
    }
    
    func createViewControllers() -> [UIViewController]{
        let names = [
            "favorites",
            "recents",
            "contacts",
            "history",
            "more",
        ]
        
        return names.map{ name -> UIViewController in
            let viewController = ContentViewController()
            viewController.title = name
            return viewController
        }
    }
}
