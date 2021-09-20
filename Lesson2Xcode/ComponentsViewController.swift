//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var uiSwitch: UISwitch!
    @IBOutlet weak var horizontalSlider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func changeAllButtonPressed(_ sender: Any) {
        counterLabel.text = "0"
        stepper.value = 0
        
        let index = segmentedControl.selectedSegmentIndex
        if index + 1 < segmentedControl.numberOfSegments {
            segmentedControl.selectedSegmentIndex = index+1
        }else{
            segmentedControl.selectedSegmentIndex = 0
        }
        
        uiSwitch.isOn = !uiSwitch.isOn
        
        let horizontalSliderValue = horizontalSlider.value
        if horizontalSliderValue + 0.2 < horizontalSlider.maximumValue {
            horizontalSlider.value = horizontalSliderValue + 0.2
        }else{
            horizontalSlider.value =
                horizontalSliderValue - horizontalSlider.maximumValue
        }
        
        let progressValue = progressView.progress
        if progressValue + 0.2 < 1 {
            progressView.progress = progressValue + 0.2
        }else{
            progressView.progress =
                progressValue - 1
        }
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        counterLabel.text = String(stepper.value)
    }
    
    
    
}

