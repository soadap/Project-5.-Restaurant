//
//  CategoryTableViewController.swift
//  Restoraunts
//
//  Created by soadap on 2/21/19.
//  Copyright © 2019 soadap. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    var categories = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MenuController.shared.fetchCategories { (categories) in
            if let categories = categories {
                self.updateUI(with: categories)
            }
        }
    }
    
    func updateUI(with categories: [String]) {
        DispatchQueue.main.async {
            self.categories = categories
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CATEGORY_CELL_IDENTIFIER, for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }

    func configure(_ cell : UITableViewCell, forItemAt indexPath : IndexPath) {
        let categoryString = categories[indexPath.row]
        cell.textLabel?.text = categoryString.capitalized
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == MENU_SEGUE {
            let menuViewTableController = segue.destination as! MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            menuViewTableController.category = categories[index]
        }
    }

}
