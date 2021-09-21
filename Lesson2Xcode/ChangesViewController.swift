//
//  ChangesViewController.swift
//  Lesson2Xcode
//
//  Created by Tagir Kabirov on 20.09.2021.
//

import UIKit

class ChangesViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var testImg: UIImageView!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var switchTest: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.progress = 0
        picker.dataSource = self
        picker.delegate = self
    }

    @IBAction func buttonChanges(_ sender: Any) {
        progressViewChange()

        switchTest.setOn(switchTest.isOn ? false : true, animated: true)
        
        segment.selectedSegmentIndex = segment.selectedSegmentIndex == 1 ? 0 : 1
    }
    
    @IBAction func switchChange(_ sender: Any) {
        if switchTest.isOn {
            labelSwitch.text = "On"
        }
        else {
            labelSwitch.text = "Off"
        }
    }
    
    @IBAction func sliderChange(_ sender: Any) {
        sliderValue.text = String(slider.value)
    }
    
    @IBAction func stepperChange(_ sender: Any) {
        stepperLabel.text = String(stepper.value.description)
        }
    
    func progressViewChange() {
        var timer = Timer()

        progressView.progress = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in

            self.progressView.progress += 0.01

            if self.progressView.progress == 1 {
                self.testImg.image = UIImage(named: "fail")
            }

        })
    }
}


extension ChangesViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
}

extension ChangesViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Элемент \(row)"
    }
}
