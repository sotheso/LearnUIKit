//
//  DetailViewController.swift
//  LearnUIKit
//
//  Created by Sothesom on 22/04/1403.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var ImageView: UIImageView!
    var SelectedImage: String? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // navigation title
        title = SelectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        // سوویفت اجازه ساده از تصویر را نمی دهد بدون آن که آن را بررسی کنیم
        if let ImageToLoad =  SelectedImage {
            ImageView.image = UIImage(named: ImageToLoad)
        }
    }

    // هایت کردن دکمه بک
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
