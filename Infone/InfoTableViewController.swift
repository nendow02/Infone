//
//  InfoTableViewController.swift
//  Infone
//
//  Created by Nathan Endow on 8/15/20.
//  Copyright © 2020 Nathan Endow. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController,UISearchResultsUpdating{
    
    let searchController = UISearchController(searchResultsController: nil)
    var filteredItems = [Int]()
    var rowCounter = 0
    // Use rowCounter instead of indexPath so data doesn't repeat every section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        for item in AppData.shared.rowInfo {
            let currentItem = item.value.first!.key.lowercased()
            if currentItem.contains(searchController.searchBar.text!.lowercased()) {
                filteredItems.append(item.key)
            }
        }
        tableView.reloadData()
        rowCounter = 0
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        if searchController.isActive {
          return 1
        }
        return AppData.shared.sectionInfo.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive {
            return filteredItems.count
        }
        let currentSection = AppData.shared.sectionInfo[section]
        return currentSection!.first!.key
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if searchController.isActive {
               return nil
             }
          let currentSection = AppData.shared.sectionInfo[section]
          return currentSection!.first!.value
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CellTableViewCell
        var currentInfo: [String:String]
        if searchController.isActive {
            let currentFiltered = filteredItems.first!
            //gets the key of whichever filtered item is next
            //able to do .first because first item is always removed after
            currentInfo = AppData.shared.rowInfo[currentFiltered]!
            filteredItems.remove(at: 0)
            //removes so duplicates don't appear in search
        }else {
            currentInfo = AppData.shared.rowInfo[rowCounter]!
            rowCounter += 1
        }
        cell.item.text = currentInfo.first?.key
        cell.result.text = currentInfo.first?.value
        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}
