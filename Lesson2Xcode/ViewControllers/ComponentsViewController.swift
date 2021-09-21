//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Алсу Хайруллина on 20.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testSwitch: UISwitch!
    @IBOutlet weak var testSlider: UISlider!
    @IBOutlet weak var testProgressView: UIProgressView!
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    let choices = ["Linux","MacOS","Windows"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return choices[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return choices.count
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeButton(_ sender: Any) {
        testSwitch.isOn = false
        testLabel.text = " I CHANGED !"
        testLabel.backgroundColor = UIColor.red
        segmentControl.backgroundColor = UIColor.yellow
        segmentControl.selectedSegmentIndex = 1
        testSlider.setValue(100, animated: true)
        testProgressView.setProgress(5, animated: true)
        pickerView.selectRow(1, inComponent: 0, animated: true)
    }
    
}
