//
//  ViewController.swift
//  a202Image
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {



    
    var images:[UIImage?] = []
    
    @IBOutlet weak var theCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage(named: "image1"),
                  UIImage(named: "image2"),
                  UIImage(named: "image3"),
                  UIImage(named: "image4"),
                  UIImage(named: "image5"),
                  UIImage(named: "image6")
        ]
        
        theCollectionView.dataSource = self
        theCollectionView.delegate = self
        
        setLauout(numberOfLine: 3)
        


    }
    
    
    func setLauout(numberOfLine:CGFloat){
        let screenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: screenSize.width / numberOfLine - 10, height: screenSize.width / numberOfLine - 10)
        theCollectionView.setCollectionViewLayout(layout, animated: true)
    }

    
    //MARK: ColletionView Delegate & DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! MyCollectionViewCell
        cell.theImage.image = images[indexPath.row]
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        self.performSegue(withIdentifier: "goImage", sender: nil)
    }
    
    
    
    
    @IBAction func layoutSetting(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex{
        case 0:
            setLauout(numberOfLine: 3)
        case 1:
            setLauout(numberOfLine: 4)
        case 2:
            setLauout(numberOfLine: 5)
        default:
            break
        }
        
        
    }
    
}

