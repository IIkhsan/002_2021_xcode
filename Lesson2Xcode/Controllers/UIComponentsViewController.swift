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
    private let items = ["Item 1", "Item 2", "Item 3", "Item 4"]
    
    // user specifics
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var mSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mActivityIndicator: UIActivityIndicatorView!
    
    // controllers
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var genderSwitch: UISwitch!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetValues()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mActivityIndicator.isHidden = true
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
        // start loading
        mActivityIndicator.startAnimating()
        mActivityIndicator.isHidden = false
        nameTF.text = ""
        
        ageStepper.value = kDefaultAge
        onAgeChanged(ageStepper)
        
        genderSwitch.setOn(kDefaultGender, animated: true)
        onGenderChanged(genderSwitch)
        
        heightSlider.setValue(kDefaultHeight, animated: true)
        onHeightChanged(heightSlider)
        
        mSegmentedControl.selectedSegmentIndex = 0
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
            self?.mActivityIndicator.stopAnimating()
            self?.mActivityIndicator.isHidden = true
        }
        
    }
}

// MARK: - UIPickerViewDataSource and UIPickerViewDelegate

extension UIComponentsViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        items[row]
    }
    
}
