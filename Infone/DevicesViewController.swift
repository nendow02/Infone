//
//  DevicesViewController.swift
//  
//
//  Created by Nathan Endow on 8/25/20.
//

import UIKit
import DeviceKit

class DevicesViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var chosenDevice: Device?
        switch segue.identifier {
        case "se1":
            chosenDevice = .iPhoneSE
        case "6s":
            chosenDevice = .iPhone6s
        case "6sPlus":
            chosenDevice = .iPhone6sPlus
        case "7":
            chosenDevice = .iPhone7
        case "7Plus":
            chosenDevice = .iPhone7Plus
        case "8":
            chosenDevice = .iPhone8
        case "8Plus":
            chosenDevice = .iPhone8Plus
        case "x":
            chosenDevice = .iPhoneX
        case "xs":
            chosenDevice = .iPhoneXS
        case "xsMax":
            chosenDevice = .iPhoneXSMax
        case "xr":
            chosenDevice = .iPhoneXR
        case "11":
            chosenDevice = .iPhone11
        case "11Pro":
            chosenDevice = .iPhone11Pro
        case "11ProMax":
            chosenDevice = .iPhone11ProMax
        case "se2":
            chosenDevice = .iPhoneSE2
        default:
            break
        }
        let vc = segue.destination as! InfoTableViewController
        vc.chosenDevice = chosenDevice
    }
    
}
