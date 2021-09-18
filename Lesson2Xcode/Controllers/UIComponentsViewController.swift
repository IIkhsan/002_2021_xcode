//
//  UIComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Evans Owamoyo on 17.09.2021.
//

import UIKit

class UIComponentsViewController: UIViewController {
    
    // default values
    private let kDefaultAge = 20.0
    private let kDefaultGender = true // MALE
    private let kDefaultHeight: Float = 80.0
    
    // user specifics
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    // controllers
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var genderSwitch: UISwitch!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetValues()
    }

    @IBAction func onGenderChanged(_ sender: UISwitch) {
        genderLabel.text = "Gender: \(sender.isOn ? "Male" : "Female")"
    }
    
    @IBAction func onHeightChanged(_ sender: UISlider) {
        heightLabel.text = "Your height is: \(String(format: "%.2f", sender.value))cm"
    }
    
    @IBAction func onAgeChanged(_ sender: UIStepper) {
        ageLabel.text = "Your age is: \(Int(sender.value))"
    }
    
    @IBAction func onClearPressed(_ sender: UIButton) {
        resetValues()
    }
    
    private func resetValues() {
        nameTF.text = ""
        
        ageStepper.value = kDefaultAge
        onAgeChanged(ageStepper)
        
        genderSwitch.setOn(kDefaultGender, animated: true)
        onGenderChanged(genderSwitch)
        
        heightSlider.setValue(kDefaultHeight, animated: true)
        onHeightChanged(heightSlider)
    }
}
