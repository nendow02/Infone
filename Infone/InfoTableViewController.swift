//
//  InfoTableViewController.swift
//  Infone
//
//  Created by Nathan Endow on 8/15/20.
//  Copyright © 2020 Nathan Endow. All rights reserved.
//

import UIKit
import DeviceKit

class InfoTableViewController: UITableViewController,UISearchResultsUpdating{
    
    let searchController = UISearchController(searchResultsController: nil)
    var filteredRows = [row]()
    var rowCounter = 0
    // Use rowCounter instead of indexPath so data doesn't repeat every section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppData.shared.deviceInfo(device: Device.current)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        for i in AppData.shared.rowInfo {
            let currentItem = i.item.lowercased()
            if currentItem.contains(searchController.searchBar.text!.lowercased()) {
                filteredRows.append(i)
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
            return filteredRows.count
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
        var currentRow: row
        if searchController.isActive {
            currentRow = filteredRows.first!
            //gets the row of whichever filtered row is next
            //able to do .first because first row is always removed after
            filteredRows.remove(at: 0)
            //removes so duplicates don't appear in search
        }else {
            currentRow = AppData.shared.rowInfo[rowCounter]
            rowCounter += 1
            if currentRow.result  ==  ""{
                // first value will be "" if device is unsupported bc data would never be added from switch
                let alert = UIAlertController(title: "Unsupported Device", message: "Infone doesn't support this device yet", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)
                 }
        }
        cell.item.text = currentRow.item
        cell.result.text = currentRow.result
        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}
