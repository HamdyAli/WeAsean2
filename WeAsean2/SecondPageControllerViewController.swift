//
//  SecondPageControllerViewController.swift
//  WeAsean2
//
//  Created by SPHIERE on 7/10/18.
//  Copyright © 2018 SPHIERE. All rights reserved.
//

import UIKit

class SecondPageControllerViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imageArray = [
        UIImage(named: "About us icon"),
        UIImage(named: "About us icon"),
        UIImage(named: "450X250"),
        UIImage(named: "450X250"),
        UIImage(named: "450X250")
    ]
    
        
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath)
        as! ImageCollectionViewCell
        cell.imgImage.image = imageArray[indexPath.row]
        
        return cell
    }
}
