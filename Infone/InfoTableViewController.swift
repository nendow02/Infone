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
    var chosenDevice: Device?
    var chosenDeviceName: String?
    
    @objc func addAction() {
        //This is for name input on add button
        let alertController = UIAlertController(title: "Choose Name for Device", message: "Please give a name for the device so you can recognize it later on.", preferredStyle: .alert)
        alertController.addTextField(configurationHandler: { (textfield) in
            textfield.placeholder = "Device Name"
        })
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let textField = alertController.textFields![0] as UITextField
            let name = textField.text ?? ""
            var currentSaveName = UserDefaults.standard.array(forKey: "name") ?? [String]()
            currentSaveName.append(name)
            var currentSaveDevice = UserDefaults.standard.array(forKey: "device") ?? [String]()
            currentSaveDevice.append(self.chosenDevice!.description)
            UserDefaults.standard.set(currentSaveName, forKey: "name")
            UserDefaults.standard.set(currentSaveDevice, forKey: "device")
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: {
            (action : UIAlertAction!) -> Void in })
        alertController.addAction(cancelAction)
        alertController.addAction(saveAction)
        self.present(alertController, animated: true, completion: nil)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // if chosenDevice isn't nil it means user came from Devices or Saved tab
        if chosenDevice != nil {
            navigationItem.largeTitleDisplayMode = .never
            if chosenDeviceName == nil {
            //if chosenDeviceName is nil it means user did not come from Saved tab
                let addBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
            navigationItem.rightBarButtonItem = addBarButton
            }
        } else {
            navigationItem.largeTitleDisplayMode = .always
        }
        AppData.shared.deviceInfo(device: chosenDevice ?? Device.current, saveName:chosenDeviceName)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        self.title = chosenDeviceName ?? chosenDevice?.description ?? Device.current.name ?? "My iPhone"
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filteredRows = []
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.additionalSafeAreaInsets.top = 0
        guard !filteredRows.isEmpty else {return}
        let item = filteredRows[indexPath.row]
        var rowCount = 0
        var secCount = 0
        var itemIndex = IndexPath()
        //loop rowInfo to find where the item is
        wholeLoop: for i in AppData.shared.rowInfo {
            //loop section
            for x in i {
                //loop row
                if x.item == item.item {
                    itemIndex = IndexPath(row: rowCount, section: secCount)
                    break wholeLoop
                }
                rowCount += 1
            }
            secCount += 1
            rowCount = 0
        }
        searchController.isActive = false
        tableView.reloadData()
        tableView.scrollToRow(at: itemIndex, at: .middle, animated: true)
        self.additionalSafeAreaInsets.top = 1
    }

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
        return AppData.shared.rowInfo[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if searchController.isActive {
               return nil
             }
          return AppData.shared.sectionInfo[section]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CellTableViewCell
        var currentRow: row
        if searchController.isActive {
            currentRow = filteredRows[indexPath.row]
            cell.selectionStyle = .default
        }else {
            cell.selectionStyle = .none
            currentRow = AppData.shared.rowInfo[indexPath.section][indexPath.row]
            if indexPath.row == 0 && currentRow.result  ==  ""{
                // first value will be "" if device is unsupported bc data would never be added from switch
                let alert = UIAlertController(title: "Unsupported Device", message: "Infone doesn't support this device yet", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)
                 }
        }
        cell.item.text = currentRow.item
        cell.result.text = currentRow.result
        return cell
    }
    
    
}
