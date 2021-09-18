//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Alexandr Onischenko on 18.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {

    @IBOutlet weak var valueSwitch: UISwitch!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var valueControl: UISegmentedControl!
    @IBOutlet weak var valueSlider: UISlider!
    @IBOutlet weak var valueTextField: UITextField!
    var switchedOn: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func changeValue(_ sender: Any) {
        if switchedOn {
            valueSwitch.setOn(true, animated: true)
            valueLabel.text = "true"
            valueControl.selectedSegmentIndex = 1
            valueSlider.value = 1
            valueTextField.text = "true"
        }
        else{
            valueSwitch.setOn(false, animated: true)
            valueLabel.text = "false"
            valueControl.selectedSegmentIndex = 0
            valueSlider.value = 0
            valueTextField.text = "false"
        }
        switchedOn.toggle()
    }
}
