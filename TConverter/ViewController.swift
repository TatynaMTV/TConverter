//
//  ViewController.swift
//  TConverter
//
//  Created by Татьяна Мальчик on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var farengateLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 100
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        celciusLabel.text = "\(temperatureCelcius)ºC"
        let farengeitTemperature = Int(round((sender.value * 9 / 5) + 32))
        farengateLabel.text = "\(farengeitTemperature)ºF"
    }
}

