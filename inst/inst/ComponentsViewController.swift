//
//  ComponentsViewController.swift
//  inst
//
//  Created by itisioslab on 21.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {

    @IBOutlet weak var segmentedControllerOutlet: UISegmentedControl!
    
    @IBOutlet weak var horizontalStackViewOutlet: UIStackView!
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBOutlet weak var horizontalSliderOutlet: UISlider!
    
    @IBOutlet weak var completitionLabelOutlet: UILabel!
    
    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBOutlet weak var progressViewOutlet: UIProgressView!
    
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    
    @IBOutlet weak var stepperValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerViewOutlet.dataSource = self
        pickerViewOutlet.delegate = self
        stepperOutlet.wraps = true
        stepperOutlet.autorepeat = true
    }
    
    @IBAction func reloadButtonAction(_ sender: Any) {
        completitionLabelOutlet.text = "Download complete!"
        switchOutlet.setOn(false, animated: true)
        progressViewOutlet.progress = 100
        pickerViewOutlet.selectRow(4, inComponent: 0, animated: true)
        horizontalSliderOutlet.setValue(0, animated: true)
        stepperOutlet.value = 10
        stepperValueChanged(sender: stepperOutlet)
        segmentedControllerOutlet.setTitle("puff", forSegmentAt: 0)
        segmentedControllerOutlet.setTitle("piff", forSegmentAt: 1)
    }
    
    @IBAction func stepperValueChanged(sender: UIStepper) {
        stepperValueLabel.text = Int(sender.value).description
    }
}

extension UIViewController: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
}

extension UIViewController: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let vegetables: [String] = ["potato", "cucumber", "onion", "radish", "carrot"]
        return vegetables[row]
    }
}

