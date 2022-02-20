//
//  MyImageViewController.swift
//  a202Image
//
//  Created by 申潤五 on 2022/2/20.
//

import UIKit

class MyImageViewController: UIViewController {

    var page2Image:UIImage? = nil
    @IBOutlet weak var fullScreenImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenImageView.image = page2Image
        // Do any additional setup after loading the view.
    }
    
    
}
