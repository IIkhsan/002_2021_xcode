//
//  UIElementsViewController.swift
//  UIElementsViewController
//
//  Created by Ильдар Арсламбеков on 18.09.2021.
//

import UIKit

class UIElementsViewController: UIViewController, UITextFieldDelegate {
    
    private let pizzaImageName = "pizza"
    private let beshbarmakImageName = "beshbarmak"
    
    @IBOutlet weak var changeSizeLabel: UILabel!
    
    @IBOutlet weak var onOffSwitcher: UISwitch!
    @IBOutlet weak var onOffLabel: UILabel!
    
    @IBOutlet weak var changeBackgroundColorButton: UIButton!
    
    @IBOutlet weak var changeSwitchColorSwitch: UISwitch!
    @IBOutlet weak var changeSwitchColorButton: UIButton!
    
    @IBOutlet weak var inputTextTextField: UITextField!
    @IBOutlet weak var inputTextLabel: UILabel!

    @IBOutlet weak var makeImageRoundedImageView: UIImageView!
    @IBOutlet weak var makeImageRoundedSlider: UISlider!
    
    @IBOutlet weak var FirstImageView: UIImageView!
    @IBOutlet weak var SecondImageView: UIImageView!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var datePickerTestLabel: UILabel!
    @IBOutlet weak var datePickerTestDatePicker: UIDatePicker!
    
    @IBOutlet weak var testProgressView: UIProgressView!
    @IBOutlet weak var testSegmentControl: UISegmentedControl!
    
    @IBAction func inputTextTextFieldEndEditing(_ sender: UITextField) {
        inputTextLabel.text = sender.text
    }
    
    @IBAction func changeSwitchColorButtonPressed(_ sender: Any) {
        changeSwitchColorSwitch.onTintColor = getRandomColor()
    }
    
    @IBAction func changeSizeStepperChangedValueAction(_ sender: UIStepper) {
        changeSizeLabel.font = UIFont.systemFont(ofSize: sender.value)
    }
    
    @IBAction func onOffSwitchTriggered(_ sender: UISwitch) {
                onOffLabel.isHidden = !sender.isOn
    }
    
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        let color = getRandomColor()
        view.backgroundColor = color
        contentView.backgroundColor = color
    }
    
    @IBAction func makeImageRoundedSliderValueChanged(_ sender: UISlider) {
        makeImageRoundedImageView.layer.cornerRadius = CGFloat.init(sender.value * 100)
    }
    
    @IBAction func alphaSliderChangeValue(_ sender: UISlider) {
        FirstImageView.alpha = CGFloat.init(sender.value)
        SecondImageView.alpha = 1 - CGFloat.init(sender.value)
    }
    @IBAction func datePickerChangedValue(_ sender: UIDatePicker) {
        datePickerTestLabel.text = "Seconds: \(sender.countDownDuration.description)"
    }
    
    @IBAction func stepperChangedValue(_ sender: UISegmentedControl) {
        testProgressView.progress = Float((sender.selectedSegmentIndex + 1)) * 0.2
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inputTextTextField.delegate = self
        makeImageRoundedImageView.image = UIImage.init(named: beshbarmakImageName)
        FirstImageView.image = UIImage.init(named: beshbarmakImageName)
        FirstImageView.alpha = 0
        SecondImageView.image = UIImage.init(named: pizzaImageName)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    private func getRandomColor() -> UIColor {
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
