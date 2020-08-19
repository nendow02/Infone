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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppData.shared.deviceInfo(device: Device.current)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        self.title = Device.current.name ?? "My iPhone"
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        for i in AppData.shared.rowInfo {
            //loop section
            for x in i {
                //loop row
            let currentItem = x.item.lowercased()
            if currentItem.contains(searchController.searchBar.text!.lowercased()) {
                filteredRows.append(x)
                }
            }
        }
        tableView.reloadData()
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
        return currentSection.rowCount
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if searchController.isActive {
               return nil
             }
          let currentSection = AppData.shared.sectionInfo[section]
        return currentSection.text
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
            currentRow = AppData.shared.rowInfo[indexPath.section][indexPath.row]
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
