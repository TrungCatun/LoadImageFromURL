//
//  ViewController.swift
//  LoadImageFromURL
//
//  Created by Trung on 10/20/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlImageString = "https://innotour.vn/wp-content/uploads/2017/11/phong-canh-dep-1-814x521.jpg"
        let imageURl: URL = URL(string: urlImageString)!
        
       
        DispatchQueue(label: "abc", attributes: .concurrent).async {
            let data = try? Data(contentsOf: imageURl)
            let imageData = UIImage(data: data!)
            
            DispatchQueue.main.async {
                self.imageView.image = imageData
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

