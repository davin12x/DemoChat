//
//  ViewController.swift
//  chatAssignment
//
//  Created by Lalit on 2016-03-26.
//  Copyright © 2016 Bagga. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet var collectionView: UICollectionView!
    var model = [Model]()

    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchBar.opaque = false
        self.searchBar.layer.borderColor = UIColor.init(red: 76/255, green: 211.0/255, blue: 133.0/255, alpha: 1).CGColor
        self.searchBar.layer.borderWidth = 1
        Services.ds.REF_USERS.observeEventType(.Value, withBlock: {
            snapshot in
            //print("\(snapshot.key) -> \(snapshot.value)")
           // print(snapshot.value)
            if let snapshots = snapshot.children.allObjects as? [FDataSnapshot]{
                for snap in snapshots{
                    if let users = snap.value as? Dictionary<String,String>{
                       // let key = snap.key
                        let passedData = Model(data: users)
                        print(passedData._productName)
                        self.model.append(passedData)
                        
                    }
                    
                }
            }
            self.collectionView.reloadData()
        })
       
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(self.model.count)
        return self.model.count
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("displayCell", forIndexPath: indexPath) as? DisplayCell {
            let modelIndex = model[indexPath.row]
            cell.UpdateCell(modelIndex)
            return cell
        }
        else{
            return DisplayCell()
        }
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 170, height: 160)
    }
    
}

