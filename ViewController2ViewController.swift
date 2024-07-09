//
//  ViewController2ViewController.swift
//  myntra
//
//  Created by FCP26 on 28/06/24.
//

import UIKit

class ViewController2ViewController: UIViewController {

    @IBOutlet weak var shoe_cv: UICollectionView!
    
    let imageArr = [UIImage(named: "image")]
    
    let nameArr = ["bell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.shoe_cv.register(UINib(nibName: "collectionviewcell",bundle:nil),forCellWithReuseIdentifier: "collectionviewcell")
        
        
    }
        // Do any additional setup after loading the view.
    }

extension ViewController2ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section:Int ) -> Int {
        return self.imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.product_image_cell.image=self.imageArr[indexPath.row]
        cell.Product_name_cell.text=self.nameArr[indexPath.row]
        return cell
    }
}

extension  ViewController2ViewController:UICollectionViewDelegateFlowLayout {
    internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
        
    }
    
    
    private func collectionView2(_ collectionView: UICollectionView, layout collectionviewlayout:UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) ->CGSize {
        
        let width = collectionView.frame.width/2;
        return CGSize(width:width,height:300)
        
        
        
        
    }
    
}
