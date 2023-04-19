//
//  ViewController.swift
//  Grid&List
//
//  Created by YE002 on 11/04/23.
//

import UIKit

class ViewController: UIViewController {
    var isGridFlowLayoutUsed: Bool = false{
        didSet {
            updateButtonAppearance()
        }
    }
    fileprivate let Array = ["River Cruise", "North Island", "Mountain trail", "Southern Coast", "Fishing Place", "Green Themeland", "Sunset Park"]
        fileprivate let itemsToDisplay = [("1", "River cruise"), ("2", "North Island"), ("3", "Mountain trail"), ("4", "Southern Coast"), ("5", "Fishing place"), ("6", "Green Themeland"), ("7", "Sunset Park")]
    
    var gridFlowLayout = GridFlowLayout()
    var listFlowLayout = ListFlowLayout()
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var gridView: UIButton!
    @IBOutlet weak var listView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = gridFlowLayout
        collectionView.dataSource = self as!  UICollectionViewDataSource
        isGridFlowLayoutUsed = true
    }
    fileprivate func updateButtonAppearance(){
        let layout = isGridFlowLayoutUsed ? gridFlowLayout : listFlowLayout
        UIView.animate(withDuration: 0.2){() -> Void in self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(layout, animated: true)
        }
    }

    @IBAction func gridView(_ sender: Any) {
        isGridFlowLayoutUsed = true
    }
    
    @IBAction func listView(_ sender: Any) {
        isGridFlowLayoutUsed = false
    }
    
}

