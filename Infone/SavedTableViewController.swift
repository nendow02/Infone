//
//  SavedTableViewController.swift
//  
//
//  Created by Nathan Endow on 8/29/20.
//

import UIKit
import DeviceKit

class SavedTableViewController: UITableViewController {

    var savedName: [String]?
    var savedDevice: [String]?
    var chosenDeviceString: String?
    var chosenDeviceName: String?
    
    override func viewDidLoad() {
        navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        savedName = UserDefaults.standard.array(forKey: "name") as? [String]
        savedDevice = UserDefaults.standard.array(forKey: "device") as? [String]
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedName?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "saveID", for: indexPath)
        cell.textLabel?.text = "\(savedName![indexPath.row]) (\(savedDevice![indexPath.row]))"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else {return}
        savedName!.remove(at: indexPath.row)
        savedDevice!.remove(at: indexPath.row)
        tableView.reloadData()
        UserDefaults.standard.set(savedName, forKey: "name")
        UserDefaults.standard.set(savedDevice, forKey: "device")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenDeviceString = savedDevice![indexPath.row]
        chosenDeviceName = savedName![indexPath.row]
        performSegue(withIdentifier: "saved", sender: nil)
    }
    
    //MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var chosenDevice: Device?
        switch chosenDeviceString {
        case "iPhone SE":
            chosenDevice = .iPhoneSE
        case "iPhone 6s":
            chosenDevice = .iPhone6s
        case "iPhone 6s Plus":
            chosenDevice = .iPhone6sPlus
        case "iPhone 7":
            chosenDevice = .iPhone7
        case "iPhone 7 Plus":
            chosenDevice = .iPhone7Plus
        case "iPhone 8":
            chosenDevice = .iPhone8
        case "iPhone 8 Plus":
            chosenDevice = .iPhone8Plus
        case "iPhone X":
            chosenDevice = .iPhoneX
        case "iPhone XS":
            chosenDevice = .iPhoneXS
        case "iPhone XS Max":
            chosenDevice = .iPhoneXSMax
        case "iPhone XR":
            chosenDevice = .iPhoneXR
        case "iPhone 11":
            chosenDevice = .iPhone11
        case "iPhone 11 Pro":
            chosenDevice = .iPhone11Pro
        case "iPhone 11 Pro Max":
            chosenDevice = .iPhone11ProMax
        case "iPhone SE 92nd generation)":
            chosenDevice = .iPhoneSE2
        default:
            break
        }
        let vc = segue.destination as! InfoTableViewController
        vc.chosenDevice = chosenDevice
        vc.chosenDeviceName = chosenDeviceName
    }
}
