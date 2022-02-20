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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
