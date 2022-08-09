//
//  ViewController.swift
//  ShoppingList2
//
//  Created by Claudia Dinu on 20.06.2022.
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var itemsTableView: UITableView!
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    
    
}
