//
//  Home_p.swift
//
//
//  Created by fcp22 on 02/07/24.
//


import UIKit
import FirebaseAuth

class Home_p: UIViewController {
    
    
    
    @IBOutlet weak var Home_p: UICollectionView!
    
    let imageArr = [UIImage(named: "Mshirt"), UIImage(named: "wshirt") , UIImage(named: "Kshirt")]
    
    let nameArr = ["Men Wear", "Women Wear", "Kids Wear"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Home_p.register(UINib(nibName: "collection_view_cell", bundle: nil), forCellWithReuseIdentifier: "collection_view_cell")
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    @IBAction func BNT_cart(_ sender: UIButton) {
    }
}


extension Home_p : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = self.Home_p.dequeueReusableCell(withReuseIdentifier: "collection_view_cell", for: indexPath) as! collection_view_cell
        
        cell.product_cat_image.image = self.imageArr[indexPath.row]
        cell.Title.text = self.nameArr[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath) -> CGSize {
        let width = collectionView.frame.width;
        return CGSize(width: width, height: 380)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          
        let cell = collectionView.cellForItem(at: indexPath)
        
        let demo = UIStoryboard(name: "Home", bundle: nil)
        let vc = demo.instantiateViewController(withIdentifier: "MDemo") as! MDemo
        
        self.navigationController?.pushViewController(vc, animated: true)      }
    }
    









