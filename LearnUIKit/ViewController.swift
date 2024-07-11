//
//  ViewController.swift
//  LearnUIKit
//
//  Created by Sothesom on 20/04/1403.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        // کدوم مسیر میتونم تمام تصاویری که به برنامه خود اضافه کردم را پیدا کنم
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
            
        }
        print(pictures)
    }
}

