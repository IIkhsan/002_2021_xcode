//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Arslan Rashidov on 20.09.2021.
//

import Foundation
import UIKit

class ComponentsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var PickerViewComponent: UIPickerView!
    var pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    
    @IBOutlet weak var SegmentedControlComponent: UISegmentedControl!
    @IBOutlet weak var SwitchComponent: UISwitch!
    @IBOutlet weak var SliderComponent: UISlider!
    @IBOutlet weak var StepperComponent: UIStepper!
    @IBOutlet weak var ButtonComponent: UIButton!
    @IBOutlet weak var ProgressViewComponent: UIProgressView!
    @IBOutlet weak var LabelComponent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ChangeValuesButton(_ sender: Any) {
        if LabelComponent.text == "Label"{
            LabelComponent.text = "Button is clicked"
            pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
            SwitchComponent.transform = CGAffineTransform(scaleX: 1, y: 1)
            SliderComponent.transform = CGAffineTransform(scaleX: 4, y: 1)
            StepperComponent.transform = CGAffineTransform(scaleX: 0.5, y: 1)
            ButtonComponent.setTitle("this is button text", for: .normal)
            ProgressViewComponent.progress = 100.0
            SegmentedControlComponent.setTitle("1", forSegmentAt: 0)
            SegmentedControlComponent.setTitle("2", forSegmentAt: 1)
        }
        else{
            LabelComponent.text = "Label"
            pickerData = ["1 Item", "2 Item", "3 Item", "4 Item", "5 Item", "6 Item"]
            SwitchComponent.transform = CGAffineTransform(scaleX: 2, y: 2)
            SliderComponent.transform = CGAffineTransform(scaleX: 2, y: 1)
            StepperComponent.transform = CGAffineTransform(scaleX: 1, y: 1)
            ButtonComponent.setTitle("THIS IS BIG BUTTON TEXT", for: .normal)
            ProgressViewComponent.progress = 0.0
            SegmentedControlComponent.setTitle("2", forSegmentAt: 0)
            SegmentedControlComponent.setTitle("1", forSegmentAt: 1)
            
        }
        self.PickerViewComponent.delegate = self
        self.PickerViewComponent.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return pickerData[row]
       }
}
