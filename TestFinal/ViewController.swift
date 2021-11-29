//
//  ViewController.swift
//  TestFinal
//
//  Created by Alexandr Gorgulev on 11/20/21.
//  Copyright © 2021 Alexandr Gorgulev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let image = ["image0","image1","image2","image3","image4","image5"]
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
    }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath)as! ImageCollectionViewCell
        
       // cell.imageImageView.image = UIImage(named: image[indexPath.row])
       // cell.layer.cornerRadius = cell.frame.height / 2 
        
        return cell
    }
    
    
}
