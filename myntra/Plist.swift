//
//  ViewController.swift
//  myntra
//
//  Created by FCP26 on 12/06/24.
//

import UIKit

class Plist: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var dp_vc: UICollectionView!
    
    let imageArr = [UIImage(named: "jeans1") ,UIImage(named: "jeans2"), UIImage(named: "jeans3"),UIImage(named: "jeans4"), UIImage(named: "jeans5"),UIImage(named: "jeans6"),UIImage(named: "jeans7"),UIImage(named: "jeans8"),UIImage(named: "jeans9"),UIImage(named: "jeans10")]

    
    let nameArr = ["bellbotom jeans Rs 1200","beggy jeans Rs1400","bootcut jeans Rs1400","skinny jeans Rs1000","casual jeans Rs1000","formal jeans Rs800","oversize jeans Rs1500","denim jeans Rs1200","cargo jeans Rs1800","straightfit jeans Rs1299"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dp_vc.register(UINib(nibName: "ProductList_CollCell", bundle: nil), forCellWithReuseIdentifier: "ProductList_CollCell")
       
    }
}
extension Plist: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductList_CollCell", for: indexPath) as! ProductList_CollCell
        cell.product_image_cell.image = self.imageArr[indexPath.row]
        cell.product_nam.text = self.nameArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     let cell = collectionView.cellForItem(at: indexPath)
     let demo = UIStoryboard(name: "product_list2", bundle: nil)
     let vc = demo.instantiateViewController(withIdentifier: "DetailPage") as! DetailPage
     self.navigationController?.pushViewController(vc, animated: true)
 }
}
    
    func collectionView2(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Example: Each item will have a fixed size of 100x100
        return CGSize(width: 175, height: 200)
    }
    
    //    This function adjusts the size of items based on the collection view's width
    func collectionViewcell2(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 // Two items per row
        return CGSize(width: width, height: 380)
    }

