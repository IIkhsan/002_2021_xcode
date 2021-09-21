//
//  ViewController2.swift
//  Lesson2Xcode
//
//  Created by Милана Махсотова on 19.09.2021.
//

import Foundation
import UIKit

class RandomElementController: UIViewController {
    
    
    let variables = ["Философский камень", "Кубок огня", "Принц-полукровка", "Узник Азкабана", "Дары смерти"]
    
    let images = ["image1.png", "image2.png", "image3.png"]
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var switchComp: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var stepper: UIStepper!
    
    
    @IBOutlet weak var updatesButton: UIButton!
    
   
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func pressedUpdatesButton(_ sender: Any) {
        switchComp.isOn.toggle()
        slider.setValue(Float.random(in: 0...2.0), animated: true)
        progressView.setProgress(Float.random(in: 0...2.0), animated: true)
    
        label.text = variables.randomElement()
        imageView.image = UIImage(named: images.randomElement()!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAppereance()
        config()
    }
    private func config() {
        stepper.autorepeat = true
        stepper.wraps = false
        stepper.maximumValue = 10
    }
    
    @IBAction func pressedStepper(_ sender: Any) {
        progressView.setProgress(Float.random(in: 0...2.0), animated: true)
        
    }
    private func changeAppereance() {
        slider.minimumTrackTintColor = UIColor.purple
        switchComp.onTintColor = UIColor.purple
        progressView.progressTintColor = UIColor.purple
        imageView.image = UIImage(named: images.randomElement()!)
        label.text = variables.randomElement()
        slider.setValue(Float.random(in: 0...2.0), animated: true)
        progressView.setProgress(Float.random(in: 0...2.0), animated: true)
        
        
    }
    
}
