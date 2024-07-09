//
//  product_list_vc.swift
//  myntra
//
//  Created by FCP26 on 25/06/24.
//

import UIKit

class product_list_vc : UIViewController {

    @IBOutlet weak var product_list_coll_View: UICollectionView!
    

    
    
    let imageArr: [UIImage?] = [
        UIImage(named: "shirt1"),
        UIImage(named: "shirt2"),
        UIImage(named: "shirt3"),
        UIImage(named: "shirt4"),
        UIImage(named: "shirt5"),
        UIImage(named: "shirt6"),
        UIImage(named: "shirt7"),
        UIImage(named: "shirt8"),
        UIImage(named: "shirt9"),
        UIImage(named: "shirt10"),
        
    ]
    
    let nameArr = ["Classis shirt Rs800" , "Sanganeri shirt Rs650" , "Printed shirt Rs750", "Casual shirt Rs900" , "Plain shirt Rs600", "Formal shirt Rs781","Party wear shirt Rs999","Plain shirt Rs888","double slim shirt Rs720","Skinny shirt Rs799"]
    
    
    
    
    
    
    
   
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

             self.product_list_coll_View.register(UINib(nibName: "ProductList_CollCell", bundle: nil), forCellWithReuseIdentifier : "ProductList_CollCell")
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

    extension product_list_vc : UICollectionViewDelegate , UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imageArr.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = self.product_list_coll_View.dequeueReusableCell(withReuseIdentifier: "ProductList_CollCell", for: indexPath) as! ProductList_CollCell
            
            cell.product_image_cell.image = self.imageArr[indexPath.row]
            
            cell.product_nam.text=self.nameArr[indexPath.row]
            
////            cell.product_price.text=self.product_price
            return cell
////            
        }
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let cell = collectionView.cellForItem(at: indexPath)
         let demo = UIStoryboard(name: "product_list2", bundle: nil)
         let vc = demo.instantiateViewController(withIdentifier: "DetailPage") as! DetailPage
         self.navigationController?.pushViewController(vc, animated: true)
     }
    }


    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 200)
    }
    
    //    This function adjusts the size of items based on the collection view's width
    func CollectionViewcell(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 // Two items per row
        return CGSize(width: width, height: 380)
    }
    
      
    
    
    
    

