//
//  ViewController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/10/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var languageBtns: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func languageSelect(_ sender: Any) {
        languageBtns.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    


}

