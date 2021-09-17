//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Руслан on 17.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {
    
    var pickerData = ["Sunnyvale", "Cupertino", "Santa Clara"]
    
    @IBOutlet weak var topSwitch: UISwitch!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var plainLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plainLabel.text = "Let's have fun!"
        stepperAction(UIStepper())

        pickerView.delegate = self
        pickerView.dataSource = self
    }

    @IBAction func changeButtonAction(_ sender: UIButton) {
        topSwitch.setOn(!topSwitch.isOn, animated: true)
        changeButton.backgroundColor = [#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)].randomElement()
        plainLabel.textColor = [#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)].randomElement()
        textField.font = [UIFont(name: "ArialMT", size: 15), UIFont(name: "Courier", size: 15)].randomElement()!
        textView.text = String(textView.text.dropLast(5))
        segmentedControl.selectedSegmentIndex = Int.random(in: 0...1)
        slider.setValue(Float.random(in: 0...1), animated: true)
        stepper.stepValue = Double(Int.random(in: 1...10))
        pickerView.selectRow(Int.random(in: 0...2), inComponent: 0, animated: true)
        let calendarId: Calendar.Identifier = [.ethiopicAmeteMihret, .chinese, .gregorian].randomElement()!
        datePicker.calendar = Calendar(identifier: calendarId)
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        counterLabel.text = String(Int(stepper.value))
    }
    
}

extension ComponentsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
