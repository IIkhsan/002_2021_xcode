//
//  SettingsViewController.swift
//  Lesson2Xcode
//
//  Created by Илья on 21.09.2021.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //Outlets
    @IBOutlet weak var settings_label: UILabel!
    @IBOutlet weak var switch_image: UIImageView!
    @IBOutlet weak var settings_pickerView: UIPickerView!
    @IBOutlet weak var stepper_label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var settings_progressView: UIProgressView!
    
    //didLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settings_pickerView.delegate = self
        settings_pickerView.dataSource = self
        
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(SettingsViewController.go), userInfo: nil, repeats: true)
    }
    
    //switch
    @IBAction func settings_switch(_ sender: Any) {
        if (sender as AnyObject).isOn {
            switch_image.image = UIImage(named: "somephotos2")
        }
        else {
            switch_image.image = UIImage(named: "somephotos3")
        }
    }
    
    //button
    @IBAction func settings_button(_ sender: Any) {
        switch_image.image = UIImage(named: "photo3")
    }
    
    //SegmentedControl and Label
    @IBAction func settings_segmentedcontrol(_ sender: Any) {
        if (sender as AnyObject).selectedSegmentIndex == 0 {
            settings_label.text = "First"
        }
        else {
            settings_label.text = "Second"
        }
    }
    
    //PickerView
    let array = ["First", "Second", "Third"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            switch_image.image = UIImage(named: "photo1")
        case 1:
            switch_image.image = UIImage(named: "photo2")
        case 2:
            switch_image.image = UIImage(named: "photo3")
        default:
            break
        }
    }
    
    //ProgressView
    
    var timer = Timer()
    
    @objc func go() {
        settings_progressView.progress += 0.0005
    }
    
    //Stepper
    @IBAction func settings_stepper(_ sender: Any) {
        stepper_label.text = String(stepper.value.description)
    }
}
