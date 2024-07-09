//
//  CollectionViewController.swift
//  myntra
//
//  Created by FCP26 on 14/06/24.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {}
    
    
weak var cell_view: UICollectionViewCell!
    let imagArr = [ UIImage(systemName: "prson.fill"),UIImage(systemName:"person.fill"),UIImage[systemName:"person.fill"]]
    let titleArr=["profile","terms&condition","setting"]
func viewDidLoad(){
    super.viewDidLoad()
    self.cell_view.register(UINib(nibName: "collection viewcell", bundle: nil), forCellWithReuseIdentifier: "collection viewcell")
}


extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellforitemAt indexPath: IndexPath) -> UICollectionView {
        let cell = self.cell_view.dequeueReusableCell(withIdentifier: "collection viewcell",for:IndexPath) as! UICollectionViewCell
        return cell
    }
    private func collectionView(_ collectionView: UICollectionView, layout collectionviewlayout: UICollectionViewLayout ,sizeforitemAt indexpath)->CGSize {
        let colwidth = self.collectionView.frame.width
        let cellwidth=cellwidth/2
        return CGSize (width: <#T##CGFloat#>, height: 190)
    }
    
    }
    
    

