//
//  OverviewViewController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/12/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit
import WebKit

class OverviewViewController: UIViewController {

    @IBOutlet weak var overviewWeb: WKWebView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            let url = URL(string: "http://www.asean.org/asean/about-asean/overview/")
            let request = URLRequest(url: url!)
        
        overviewWeb.load(request)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
