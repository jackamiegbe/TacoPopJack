//
//  MainVC.swift
//  TacoPopJack
//
//  Created by MACBOOK on 13/04/2017.
//  Copyright © 2017 jack_amiegbe. All rights reserved.
//

import UIKit

class MainVC: UIViewController, /* to work with data service func */ DataServiceDelegate  {
    
    //3rd outlet and then at main story board change the class of sub header
    @IBOutlet weak var headerView: ViewHeader!
    
    //16th
    @IBOutlet weak var collectionView: UICollectionView!
    
    //17th
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //20th to load data
        ds.delegate = self
        ds.loadDeliciousTacoData()
        
        
//        ds.tacoArray.shuffle()        
        
        //21st
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        //4th connect IBOutlet and add DropShadow
        headerView.addDropShadow()
    }
    
    //18th so we know the data loaded
    func deliciousTacoDataloaded() {
        print("Delicious Taco Data is Loaded")
        collectionView.reloadData()
    }
}



//19 Source data for collection view
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Old way of doing it before our protocol/protocol extensions
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
        //            cell.configureCell()
        //            return cell
        //        }
        //        return UICollectionViewCell()
        //        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        //        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        //        return cell
        //    }
        //
        //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
        //            cell.shake()
        //        }
        //    }
        //
        //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        return CGSize(width: 95, height: 95)
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
//                cell.shake()
//            }
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 95, height: 95)
        }
    }
}





