//
//  HomeViewController.swift
//  ShoppingList2
//
//  Created by Claudia Dinu on 20.06.2022.
//

import Foundation
import UIKit

struct HomeButton {
    let title: String
    let imageName: String
}

class HomeViewController: UICollectionViewController {
    
    let reuseIdentifier = "homeCell"
    let buttons = [HomeButton(title: "Shopping list", imageName: "undraw_shopping_list"), HomeButton(title: "Nearby supermarkets", imageName: "undraw_Building"), HomeButton(title: "Nearby cities", imageName: "undraw_town")]
    
    override func viewDidLoad() {
        collectionView.delegate = self
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
//        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    // MARK: - UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buttons.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCollectionViewCell
        cell.buttonImage.image = UIImage(named: buttons[indexPath.item].imageName)
        cell.buttonName.text = buttons[indexPath.item].title
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.isSelected = true
        print(buttons[indexPath.item])
        
        switch indexPath.item {
        case 0:
            performSegue(withIdentifier: "navigateToShoppingList", sender: self)
        case 1:
            performSegue(withIdentifier: "navigateToSupermarkets", sender: self)
        case 2:
            performSegue(withIdentifier: "navigateToCities", sender: self)
        default:
            print("Different value for indexPath.item...")
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        print(buttons[indexPath.item])
    }
    
    
}
