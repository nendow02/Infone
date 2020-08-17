//
//  Data.swift
//  Infone
//
//  Created by Nathan Endow on 8/16/20.
//  Copyright © 2020 Nathan Endow. All rights reserved.
//

import Foundation
import UIKit
import DeviceKit

struct row {
    let item:String
    let result:String
}

class AppData {
    static let shared = AppData()
    
    var rowInfo = [row(item: "", result: "")]
    let sectionInfo = [
        // order in table:[rows in section:"Title"]
        0:[2:"About"]
    ]
    
    func deviceInfo(device:Device) {
        switch device {
        case .iPodTouch7:
            rowInfo = [
                //ABOUT
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhoneSE:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone6s:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone6sPlus:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
        
        case .iPhone7Plus:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone7:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone8Plus:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone8:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhoneX:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhoneXR:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhoneXSMax:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhoneXS:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone11ProMax:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone11Pro:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        case .iPhone11:
            rowInfo = [
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]
            
        default: break
            
        }
    }
}
