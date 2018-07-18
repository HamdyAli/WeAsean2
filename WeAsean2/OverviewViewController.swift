//
//  OverviewViewController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/12/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit
import WebKit

class OverviewViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {


    @IBOutlet weak var overviewWeb: WKWebView!
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        guard let url = URL(string: "http://www.asean.org/asean/about-asean/overview/")else{return}
        overviewWeb = WKWebView(frame: self.view.frame)
        overviewWeb.navigationDelegate = self
        self.view.addSubview(self.overviewWeb)
        let request = URLRequest(url: url)
        overviewWeb.load(request)
        
        //start animating loading icon
        self.overviewWeb.addSubview(self.loading)
        self.loading.startAnimating()
        //hide loading icon when when page loaded
        self.overviewWeb.navigationDelegate = self
        self.loading.hidesWhenStopped = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loading.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        loading.stopAnimating()
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
