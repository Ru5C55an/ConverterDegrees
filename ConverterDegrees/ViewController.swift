//
//  ViewController.swift
//  ConverterDegrees
//
//  Created by Руслан Садыков on 23.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        if traitCollection.userInterfaceStyle == .dark {
            backgroundImage.image = UIImage(imageLiteralResourceName: "Night")
        }
        if traitCollection.userInterfaceStyle == .light {
            backgroundImage.image = UIImage(imageLiteralResourceName: "After Noon")
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if traitCollection.userInterfaceStyle == .dark {
            backgroundImage.image = UIImage(imageLiteralResourceName: "Night")
        }
        if traitCollection.userInterfaceStyle == .light {
            backgroundImage.image = UIImage(imageLiteralResourceName: "After Noon")
        }
    }
    
    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBOutlet weak var farenheitLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsium = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsium)ºC"
        let temperatureFarenheit =  Int(round((sender.value * 9 / 5) + 32))
        farenheitLabel.text = "\(temperatureFarenheit)ºF"
    }
}

 
