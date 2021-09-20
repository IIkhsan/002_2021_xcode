//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Marat Giniyatov on 19.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {
    let pickerArray = ["1", "2", "3", "4", "5", "6"]
    let colors = [UIColor.systemBlue, UIColor.systemYellow, UIColor.systemRed, UIColor.systemPink, UIColor.systemTeal]
    let emojis = ["😀", "🧠", "🥰", "🥰", "🫁", "😝", "🙂", "😡", "🥶", "😇", "🤫", "☺️", "👽", "😉"]
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiField: UITextField!
    @IBOutlet weak var themeTextField: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var tableView: UIPickerView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var randomizeButton: UIButton!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var sliderOutlet: UISlider! {
        didSet {
            sliderOutlet.maximumValue = Float(emojis.count - 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @IBAction func stepperAction(_ sender: Any) {
        wordLabel.text = "Value : \(stepper.value)"
    }
    
    @IBAction func randomizeAction(_ sender: Any) {
        sliderOutlet.setValue(Float(Int.random(in: 1...9)), animated: true)
        emojiLabel.text = emojis[Int(sliderOutlet.value)]
        progressBar.backgroundColor = colors[Int.random(in: 0...4)]
        tableView.selectRow(Int.random(in: 0...5), inComponent: 0, animated: true)
        stepper.value = Double(Int.random(in: 1...10))
        wordLabel.text = "Value : \(stepper.value)"
        if switcher.isOn {
            switcher.setOn(false, animated: true)
            view.backgroundColor = UIColor.systemGray2
            themeTextField.text = "Dark theme"
            
        } else {
            switcher.setOn(true, animated: true)
            view.backgroundColor = UIColor.systemBackground
            themeTextField.text = "Light theme"
        }
        emojiField.text = emojis[Int.random(in: 0...9)]
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        emojiLabel.text = emojis[Int(sliderOutlet.value)]
        
    }
    
    @IBAction func switcherAction(_ sender: Any) {
        if switcher.isOn {
            view.backgroundColor = UIColor.systemBackground
            themeTextField.text = "Light theme"
        } else {
            themeTextField.text = "Dark theme"
            view.backgroundColor = UIColor.systemGray2
        }
    }
}



extension ComponentsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
    }
    
}
