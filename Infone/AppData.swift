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

struct title {
    let text: String
    let rowCount: Int
}

class AppData {
    static let shared = AppData()

    var rowInfo = [[row(item: "", result: "")]]
    let sectionInfo = [
        title(text: "About", rowCount: 4),
        title(text: "Measurements", rowCount: 5),
        title(text: "Display", rowCount: 4),
        title(text: "Features", rowCount: 6),
        title(text: "Battery", rowCount: 5),
        title(text: "Connectivity", rowCount: 4),
        title(text: "Audio and Video", rowCount: 4),
        title(text: "Front Camera", rowCount: 6),
        title(text: "Rear Camera", rowCount: 7)
    ]
    
    func deviceInfo(device:Device) {
        switch device {
        case .iPhoneSE,.simulator(.iPhoneSE):
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone SE (1st Gen)"),
                    row(item: "Name", result: device.name ?? "-"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2016")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "4.87\""),
                    row(item: "Width", result: "2.31\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "3.99 oz"),
                    row(item: "Screen Size", result: "4\"")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1136:640 pixels"),
                    row(item: "Ratio", result: "16:9")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes w/o reader mode"),
                    row(item: "Express Cards", result: "Yes w/o power reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "Force Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 hours"),
                    row(item: "Audio Playback", result: "Up to 50 hours"),
                    row(item: "Capacity", result: "1624 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Mono speaker"),
                    row(item: "Audio Jack", result: "Yes"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD camera"),
                    row(item: "Photo Size", result: "1.2 MP"),
                    row(item: "Aperture", result: "ƒ/2.4"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo", result: "No"),
                    row(item: "Video Recording", result: "720p HD at 30 fps")
                ],[//REAR CAMERA
                    row(item: "4K Video Recording", result: "30 fps"),
                    row(item: "1080p HD Video Recording", result: "30,60 fps"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Digital Zoom", result: "Up to 3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Slo-Mo", result: "Yes"),
                    row(item: "Stereo Recording", result: "No")
                ]
            ]
            
        case .iPhone6s,.simulator(.iPhone6s):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone6sPlus,.simulator(.iPhone6sPlus):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
        
        case .iPhone7Plus,.simulator(.iPhone7Plus):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone7, .simulator(.iPhone7):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone8Plus, .simulator(.iPhone8Plus):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone8, .simulator(.iPhone8):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhoneX, .simulator(.iPhoneX):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhoneXR, .simulator(.iPhoneXR):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhoneXSMax, .simulator(.iPhoneXSMax):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhoneXS, .simulator(.iPhoneXS):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone11ProMax, .simulator(.iPhone11ProMax):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone11Pro, .simulator(.iPhone11Pro):
                  rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        case .iPhone11, .simulator(.iPhone11):
            rowInfo = [[
                row(item: "Device", result: "iPhoneTest"),
                row(item: "Released", result: "2020")
            ]]
            
        default: break
            
        }
    }
}
