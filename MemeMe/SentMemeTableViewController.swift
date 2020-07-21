//
//  SentMemeTableViewController.swift
//  MemeMe
//
//  Created by ShahadAlalmai on 20/07/2020.
//  Copyright © 2020 ShahadAlshareef. All rights reserved.
//

import UIKit

class SentMemeTableViewController: UITableViewController {

    // the memes array from the AppDelegate
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.memes.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]

//         Configure the cell...
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topText

        return cell
    }
 

}
