//
//  Wishlist_VC.swift
//  Myntra
//
//  Created by FCP23 on 26/06/24.
//

import UIKit

class Wishlist_VC: UIViewController {
    
  
    @IBOutlet weak var wishlist_CVC: UICollectionView!
    
    let imgArr = [UIImage(named:"products"), UIImage(named:"products"), UIImage(named:"products")]
    let prdnameArr = ["Jacket", "Jacket", "Jacket"]
    let priceArr = ["Rs. 700", "Rs. 700", "Rs. 700"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.wishlist_CVC.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")

    }
    
    }
extension Wishlist_VC : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.wishlist_CVC.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.img_CVC.image = self.imgArr[indexPath.row]
        cell.pb_CVC.text = self.prdnameArr[indexPath.row]
        cell.price_CVC.text = self.priceArr[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2;
        return CGSize(width: width, height: 380)
    }
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


