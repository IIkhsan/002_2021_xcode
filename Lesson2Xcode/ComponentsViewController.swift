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
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeAllButtonPressed(_ sender: Any) {
        counterLabel.text = String((Int(counterLabel.text ?? "0") ?? 0)+1)
        
        let index = segmentedControl.selectedSegmentIndex
        if index + 1 < segmentedControl.numberOfSegments {
            segmentedControl.selectedSegmentIndex = index+1
        }else{
            segmentedControl.selectedSegmentIndex = 0
        }
        
        uiSwitch.isOn = !uiSwitch.isOn
        
        let horizontalSliderValue = horizontalSlider.value
        if horizontalSliderValue + 25 < horizontalSlider.maximumValue {
            horizontalSlider.value = horizontalSliderValue + 25
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
        
        pickerView.selectRow(Int.random(in: 0..<4), inComponent: 0, animated: true)
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        counterLabel.text = String(stepper.value)
    }
    
}

extension UIViewController: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        4
    }
}

extension UIViewController: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let seasons: [String] = ["winter", "spring", "summer", "autumn"]
        return seasons[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
}
