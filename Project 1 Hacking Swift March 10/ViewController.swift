//
//  ViewController.swift
//  Project 1 Hacking Swift March 10
//
//  Created by Roland Jones on 3/10/18.
//  Copyright © 2018 Roland Jones Heavy Industries. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                pictures.append(item)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
        
        print(pictures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

