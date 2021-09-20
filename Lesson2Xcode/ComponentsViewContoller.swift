//
//  ComponentsViewContoller.swift
//  Lesson2Xcode
//
//  Created by Danil Gerasimov on 17.09.2021.
//

import UIKit

class ComponentsViewContoller: UIViewController {

    @IBOutlet weak var componentSlider: UISlider!
    @IBOutlet weak var componentSegmentedControl: UISegmentedControl!
    @IBOutlet weak var componentLabel: UILabel!
    @IBOutlet weak var componentTextField: UITextField!
    @IBOutlet weak var componentButton: UIButton!
    @IBOutlet weak var componentSwitch: UISwitch!
    @IBOutlet weak var componentProgressView: UIProgressView!
    @IBOutlet weak var componentStepper: UIStepper!
    @IBOutlet weak var componentPickerView: UIPickerView!
    
    var counter: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func componentButtonAction(_ sender: Any) {
        if counter % 2 == 0 {
            componentLabel.text = "Even :)"
            componentSwitch.setOn(true, animated: true)
            componentSlider.setValue(100.0, animated: true)
            componentButton.setTitle("Press me :)", for: .normal)
            componentTextField.text = "Good day!"
            componentSegmentedControl.setTitle("Perfect", forSegmentAt: 0)
            componentSegmentedControl.setTitle("Worst", forSegmentAt: 1)
            componentSegmentedControl.selectedSegmentIndex = 0
            componentProgressView.progress = 100
            componentStepper.backgroundColor = UIColor.green
            componentPickerView.backgroundColor = UIColor.green
        } else {
            componentLabel.text = "Not even :("
            componentSwitch.setOn(false, animated: true)
            componentSlider.setValue(0.0, animated: true)
            componentButton.setTitle("Don't press me!", for: .normal)
            componentTextField.text = "Bad day!"
            componentSegmentedControl.setTitle("Perfect", forSegmentAt: 0)
            componentSegmentedControl.setTitle("Worst", forSegmentAt: 1)
            componentSegmentedControl.selectedSegmentIndex = 1
            componentProgressView.progress = 0
            componentStepper.backgroundColor = UIColor.red
            componentPickerView.backgroundColor = UIColor.red
        }
        counter += 1
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
