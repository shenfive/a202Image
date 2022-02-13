//
//  ViewController.swift
//  a202Image
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let path = Bundle.main.path(forResource: "bee", ofType: "png"){
            print(path)
            theImage.image = UIImage(contentsOfFile: path)
        }
        
        
    }


}

