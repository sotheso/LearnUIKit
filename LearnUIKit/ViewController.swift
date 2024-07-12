//
//  ViewController.swift
//  LearnUIKit
//
//  Created by Sothesom on 20/04/1403.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Sothesom"
        navigationController?.navigationBar.prefersLargeTitles = true
        
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
    
    // چند ردیف باید ظاهر شود
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    // نوع سلول ها باید چطور باشد
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // لود کردن ردیف های جدید 
        let cell = tableView.dequeueReusableCell(withIdentifier: "Pictures", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
        
    }
    // لود کردن هر تصویر برای صفحه جدید
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.SelectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

