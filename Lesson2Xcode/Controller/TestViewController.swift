//
//  TestViewController.swift
//  Lesson2Xcode
//
//  Created by Роман Сницарюк on 15.09.2021.
//

import UIKit

class TestViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //MARK: - Outlets
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var testSwitch: UISwitch!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    //MARK: - Var
    let values = ["Hello", "Hi", "Nice", "Well"]
    
    //MARK: - View controller's cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Button's actions
    @IBAction func changeButtonTapped(_ sender: Any) {
        randomValues()
    }
    //MARK: - Picker view data source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return values[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textLabel.text = String(component)
    }
    
    //MARK: - Helpers
    private func configure() {
        changeButton.layer.borderWidth = 1
        changeButton.layer.cornerRadius = 15
        changeButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        changeButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
       
        textLabel.text = values.randomElement()
        testSwitch.isOn.toggle()
        textField.text = values.randomElement()
    }
    
    private func randomValues() {
        textLabel.text = values.randomElement()
        testSwitch.isOn.toggle()
        textField.text = values.randomElement()
        slider.setValue(Float.random(in: 0...1), animated: true)
        progressView.progress = Float.random(in: 0...1)
        segmentControl.selectedSegmentIndex = Int.random(in: 0...1)
    }
}
