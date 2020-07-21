//
//  SentMemeCollectionViewController.swift
//  MemeMe
//
//  Created by ShahadAlalmai on 20/07/2020.
//  Copyright © 2020 ShahadAlshareef. All rights reserved.
//

import Foundation
import UIKit

private let reuseIdentifier = "MemeCollectionViewCell"

class SentMemeCollectionViewController: UICollectionViewController {

    // the memes array from the AppDelegate
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Configure the cell
        cell.memeImageView?.image = meme.memedImage
    
        return cell
    }



}
