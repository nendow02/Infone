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

    var rowInfo = [[row(item: "", result: "")]]
    let sectionInfo = ["About","Measurements","Display","Features","Battery","Connectivity","Audio and Video","Front Camera","Rear Camera"]
    
    //MARK: Device Info
    func deviceInfo(device:Device, saveName: String?) {
        switch device {
        case .iPhoneSE,.simulator(.iPhoneSE):
            //MARK: iPhone SE 1
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone SE (1st Gen)"),
                    row(item: "Name", result: saveName ?? device.name ?? "-"),
                    row(item: "Chipset", result: "A9"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2016")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "4.87\""),
                    row(item: "Width", result: "2.31\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "3.99 oz"),
                    row(item: "Screen Size", result: "4\""),
                    row(item: "Water Resistance", result: "-")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1136:640 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "800:1"),
                    row(item: "Max Brightness", result: "500 Nits"),
                    row(item: "True Tone", result: "No")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes W/O Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 Hours"),
                    row(item: "Audio Playback", result: "Up to 50 Hours"),
                    row(item: "Capacity", result: "1624 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Mono Speaker"),
                    row(item: "Audio Jack", result: "Yes"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "1.2 MP"),
                    row(item: "Aperture", result: "ƒ/2.4"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "720p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "30 fps"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
            
        case .iPhone6s,.simulator(.iPhone6s):
            //MARK: iPhone 6s
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 6s"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A9"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2015")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.44\""),
                    row(item: "Width", result: "2.64\""),
                    row(item: "Depth", result: "0.28\""),
                    row(item: "Weight", result: "5.04 oz"),
                    row(item: "Screen Size", result: "4.7\""),
                    row(item: "Water Resistant", result: "-")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1334:750 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "500 Nits"),
                    row(item: "True Tone", result: "No")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes W/O Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 11 Hours"),
                    row(item: "Audio Playback", result: "Up to 50 Hours"),
                    row(item: "Capacity", result: "1715 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Mono Speaker"),
                    row(item: "Audio Jack", result: "Yes"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "5 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "720p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "30 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhone6sPlus,.simulator(.iPhone6sPlus):
            //MARK: iPhone 6s Plus
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 6s Plus"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A9"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2015")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "6.23\""),
                    row(item: "Width", result: "3.07\""),
                    row(item: "Depth", result: "0.29\""),
                    row(item: "Weight", result: "6.77 oz"),
                    row(item: "Screen Size", result: "5.5\""),
                    row(item: "Water Resistant", result: "-")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "401 PPI"),
                    row(item: "Resolution", result: "1920:1080 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1300:1"),
                    row(item: "Max Brightness", result: "500 Nits"),
                    row(item: "True Tone", result: "No")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes W/O Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 14 Hours"),
                    row(item: "Audio Playback", result: "Up to 80 Hours"),
                    row(item: "Capacity", result: "2915 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Mono Speaker"),
                    row(item: "Audio Jack", result: "Yes"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "5 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "720p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "30 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhone7Plus,.simulator(.iPhone7Plus):
            //MARK: iPhone 7 Plus
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 7 Plus"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A10"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2016")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "6.23\""),
                    row(item: "Width", result: "3.07\""),
                    row(item: "Depth", result: "0.29\""),
                    row(item: "Weight", result: "6.63 oz"),
                    row(item: "Screen Size", result: "5.5\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1334:750 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1300:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "No")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 14 Hours"),
                    row(item: "Audio Playback", result: "Up to 60 Hours"),
                    row(item: "Capacity", result: "2900 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "30 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhone7, .simulator(.iPhone7):
            //MARK: iPhone 7
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 7"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A10"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2016")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.44\""),
                    row(item: "Width", result: "2.64\""),
                    row(item: "Depth", result: "0.28\""),
                    row(item: "Weight", result: "4.87 oz"),
                    row(item: "Screen Size", result: "4.7\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "401 PPI"),
                    row(item: "Resolution", result: "1334:750 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "No")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "4.2"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 Hours"),
                    row(item: "Audio Playback", result: "Up to 40 Hours"),
                    row(item: "Capacity", result: "1960 mAh"),
                    row(item: "Wireless Charging", result: "No"),
                    row(item: "Fast-Charge Capable", result: "No")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "No")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "30 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhone8Plus, .simulator(.iPhone8Plus):
            //MARK: iPhone 8 Plus
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 8 Plus"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A11"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2017")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "6.24\""),
                    row(item: "Width", result: "3.07\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "7.13 oz"),
                    row(item: "Screen Size", result: "5.5\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "401 PPI"),
                    row(item: "Resolution", result: "1920:1080 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1300:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 14 Hours"),
                    row(item: "Audio Playback", result: "Up to 60 Hours"),
                    row(item: "Capacity", result: "2675 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhone8, .simulator(.iPhone8):
            //MARK: iPhone 8
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 8"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A11"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2017")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.45\""),
                    row(item: "Width", result: "2.65\""),
                    row(item: "Depth", result: "0.29\""),
                    row(item: "Weight", result: "5.22 oz"),
                    row(item: "Screen Size", result: "4.7\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1334:750 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 Hours"),
                    row(item: "Audio Playback", result: "Up to 40 Hours"),
                    row(item: "Capacity", result: "1821 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "No"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhoneX, .simulator(.iPhoneX):
            //MARK: iPhone X
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone X"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A11"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2017")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.65\""),
                    row(item: "Width", result: "2.79\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "6.14 oz"),
                    row(item: "Screen Size", result: "5.8\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "OLED"),
                    row(item: "Pixel Density", result: "458 PPI"),
                    row(item: "Resolution", result: "2436:1125 Pixels"),
                    row(item: "Aspect Ratio", result: "13:6"),
                    row(item: "Contrast Ratio", result: "1,000,000:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/O Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 Hours"),
                    row(item: "Audio Playback", result: "Up to 60 Hours"),
                    row(item: "Capacity", result: "2716 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "No"),
                    row(item: "SIM Card", result: "Nano-SIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "No"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "No"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
        case .iPhoneXR, .simulator(.iPhoneXR):
            //MARK: iPhone XR
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone XR"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A12"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2018")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.94\""),
                    row(item: "Width", result: "2.98\""),
                    row(item: "Depth", result: "0.33\""),
                    row(item: "Weight", result: "6.84 oz"),
                    row(item: "Screen Size", result: "6.1\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "625 PPI"),
                    row(item: "Resolution", result: "1792:828 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 16 Hours"),
                    row(item: "Audio Playback", result: "Up to 65 Hours"),
                    row(item: "Capacity", result: "2942 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Wider Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 30 FPS"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "No")
                ]
            ]

        case .iPhoneXSMax, .simulator(.iPhoneXSMax):
            //MARK: iPhone XS Max
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone XS Max"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A12"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2018")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "6.20\""),
                    row(item: "Width", result: "3.05\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "7.34 oz"),
                    row(item: "Screen Size", result: "6.5\""),
                    row(item: "Water Resistant", result: "2 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "OLED"),
                    row(item: "Pixel Density", result: "458 PPI"),
                    row(item: "Resolution", result: "2688:1242 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "1,000,000:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 15 Hours"),
                    row(item: "Audio Playback", result: "Up to 65 Hours"),
                    row(item: "Capacity", result: "3174 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Wider Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 30 FPS"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "No")
                ]
            ]

            
        case .iPhoneXS, .simulator(.iPhoneXS):
            //MARK: iPhone XS
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone XS"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A12"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2018")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.65\""),
                    row(item: "Width", result: "2.79\""),
                    row(item: "Depth", result: "0.30\""),
                    row(item: "Weight", result: "6.24 oz"),
                    row(item: "Screen Size", result: "5.8\""),
                    row(item: "Water Resistant", result: "2 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "OLED"),
                    row(item: "Pixel Density", result: "458 PPI"),
                    row(item: "Resolution", result: "2436:1125 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "1,000,000:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "Yes")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 14 Hours"),
                    row(item: "Audio Playback", result: "Up to 60 Hours"),
                    row(item: "Capacity", result: "2658 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ac Wi-Fi")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Wider Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 30 FPS"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "No")
                ]
            ]

            
        case .iPhone11ProMax, .simulator(.iPhone11ProMax):
            //MARK: iPhone 11 Pro Max
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 11 Pro Max"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A13"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2019")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "6.22\""),
                    row(item: "Width", result: "3.06\""),
                    row(item: "Depth", result: "0.32\""),
                    row(item: "Weight", result: "7.97 oz"),
                    row(item: "Screen Size", result: "6.5\""),
                    row(item: "Water Resistant", result: "4 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "OLED"),
                    row(item: "Pixel Density", result: "458 PPI"),
                    row(item: "Resolution", result: "2688:1242 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "2,000,000:1"),
                    row(item: "Max Brightness", result: "800 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 20 Hours"),
                    row(item: "Audio Playback", result: "Up to 80 Hours"),
                    row(item: "Capacity", result: "3969 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ax Wi-Fi 6")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Spatial Audio"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "Yes"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "12 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Video Recording", result: "4K at 24/30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "3"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 60 FPS"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In and Out"),
                    row(item: "Audio Zoom", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "Yes")
                ]
            ]
        //MARK: iPhone 11 Pro
        case .iPhone11Pro, .simulator(.iPhone11Pro):
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 11 Pro"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A13"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2019")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.67\""),
                    row(item: "Width", result: "2.81\""),
                    row(item: "Depth", result: "0.32\""),
                    row(item: "Weight", result: "6.63 oz"),
                    row(item: "Screen Size", result: "5.8\""),
                    row(item: "Water Resistant", result: "4 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "OLED"),
                    row(item: "Pixel Density", result: "458 PPI"),
                    row(item: "Resolution", result: "2436:1125 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "2,000,000:1"),
                    row(item: "Max Brightness", result: "800 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 18 Hours"),
                    row(item: "Audio Playback", result: "Up to 65 Hours"),
                    row(item: "Capacity", result: "3046 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ax Wi-Fi 6")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Spatial Audio"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "Yes"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "12 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Video Recording", result: "1080p HD at 30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "3"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 60 FPS"),
                    row(item: "Photo Digital Zoom", result: "10x"),
                    row(item: "Video Digital Zoom", result: "6x"),
                    row(item: "Optical Zoom", result: "2x In and Out"),
                    row(item: "Audio Zoom", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "Yes")
                ]
            ]
        //MARK: iPhone 11
        case .iPhone11, .simulator(.iPhone11):
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone 11"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A13"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2019")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.94\""),
                    row(item: "Width", result: "2.98\""),
                    row(item: "Depth", result: "0.33\""),
                    row(item: "Weight", result: "6.84 oz"),
                    row(item: "Screen Size", result: "6.1\""),
                    row(item: "Water Resistant", result: "2 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1792:828 Pixels"),
                    row(item: "Aspect Ratio", result: "19.5:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "500 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "No"),
                    row(item: "Face ID", result: "Yes"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 17 Hours"),
                    row(item: "Audio Playback", result: "Up to 65 Hours"),
                    row(item: "Capacity", result: "3110 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ax Wi-Fi 6")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Spatial Audio"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "Yes"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "TrueDepth Camera"),
                    row(item: "Photo Size", result: "12 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Video Recording", result: "1080p HD at 30/60 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "2"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 60 FPS"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "2x Out"),
                    row(item: "Audio Zoom", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "Yes")
                ]
            ]
        //MARK: iPhone SE 2
        case .iPhoneSE2, .simulator(.iPhoneSE2):
            rowInfo = [
                [//ABOUT
                    row(item: "Device", result: "iPhone SE (2nd Gen)"),
                    row(item: "Name", result: saveName ??  device.name ?? "-"),
                    row(item: "Chipset", result: "A13"),
                    row(item: "iOS", result: device.systemVersion ?? "-"),
                    row(item: "Released", result: "2020")
                ],[//MEASUREMENTS
                    row(item: "Height", result: "5.45\""),
                    row(item: "Width", result: "2.65\""),
                    row(item: "Depth", result: "0.29\""),
                    row(item: "Weight", result: "5.22 oz"),
                    row(item: "Screen Size", result: "4.7\""),
                    row(item: "Water Resistant", result: "1 m for 30 min")
                ],[//DISPLAY
                    row(item: "Display Type", result: "LCD"),
                    row(item: "Pixel Density", result: "326 PPI"),
                    row(item: "Resolution", result: "1334:750 Pixels"),
                    row(item: "Aspect Ratio", result: "16:9"),
                    row(item: "Contrast Ratio", result: "1400:1"),
                    row(item: "Max Brightness", result: "625 Nits"),
                    row(item: "True Tone", result: "Yes")
                ],[//FEATURES
                    row(item: "Bluetooth", result: "5.0"),
                    row(item: "NFC", result: "Yes W/ Reader Mode"),
                    row(item: "Express Cards", result: "Yes W/ Power Reserve"),
                    row(item: "Touch ID", result: "Yes"),
                    row(item: "Face ID", result: "No"),
                    row(item: "3D Touch", result: "No")
                ],[//BATTERY
                    row(item: "Video Playback", result: "Up to 13 Hours"),
                    row(item: "Audio Playback", result: "Up to 40 Hours"),
                    row(item: "Capacity", result: "1821 mAh"),
                    row(item: "Wireless Charging", result: "Yes"),
                    row(item: "Fast-Charge Capable", result: "Yes")
                ],[//CONNECTIVITY
                    row(item: "Dual SIM", result: "Yes"),
                    row(item: "SIM Card", result: "Nano-SIM, eSIM"),
                    row(item: "Wi-Fi Calling", result: "Yes"),
                    row(item: "Wi-Fi", result: "802.11ax Wi-Fi 6")
                ],[//AUDIO AND VIDEO
                    row(item: "Audio Playback", result: "Stereo"),
                    row(item: "Audio Jack", result: "No"),
                    row(item: "Dolby Atmos", result: "No"),
                    row(item: "Dolby Vision HDR", result: "Yes")
                ],[//FRONT CAMERA
                    row(item: "Type", result: "FaceTime HD Camera"),
                    row(item: "Photo Size", result: "7 MP"),
                    row(item: "Aperture", result: "ƒ/2.2"),
                    row(item: "Portrait Mode", result: "Yes"),
                    row(item: "Slo-Mo Support", result: "No"),
                    row(item: "Video Recording", result: "1080p HD at 30 FPS")
                ],[//REAR CAMERA
                    row(item: "Number of Cameras", result: "1"),
                    row(item: "4K Video Recording", result: "24/30/60 FPS"),
                    row(item: "1080p HD Video Recording", result: "30/60 FPS"),
                    row(item: "Extended Dynamic Range", result: "Up to 30 FPS"),
                    row(item: "Photo Digital Zoom", result: "5x"),
                    row(item: "Video Digital Zoom", result: "3x"),
                    row(item: "Optical Zoom", result: "No"),
                    row(item: "Audio Zoom", result: "No"),
                    row(item: "Slo-Mo Support", result: "Yes"),
                    row(item: "Stereo Recording", result: "Yes"),
                    row(item: "Night Mode", result: "No")
                ]
            ]
            
        default: break
            
        }
    }
}
