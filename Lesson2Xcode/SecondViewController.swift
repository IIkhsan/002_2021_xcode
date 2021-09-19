//
//  SecondViewController.swift
//  Lesson2Xcode
//
//  Created by Даниил Багаутдинов on 15.09.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var counterForStepper: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var switchq: UISwitch!
    
    let arr = ["ds","ab","qwe"]
    let colors = [UIColor.red,UIColor.black,UIColor.blue,UIColor.green]
    var count = 0.0
    var count1 = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        swap()
    }
    
    
    func swap() {
        label.text = arr.randomElement()
        textField.text = arr.randomElement()
        switchq.isOn.toggle()
        slider.setValue(Float.random(in: 0...1), animated: true)
        stepper.value = Double.random(in: 1...20)
        counterForStepper.text = "\(stepper.value)"
        progressView.setProgress(Float(count), animated: true)
        count += 0.1
        textView.text = arr.randomElement()
        textView.backgroundColor = colors.randomElement() ?? UIColor.white
        if count1 % 2 == 0 {
            segmentControl.selectedSegmentIndex = 1
        } else {
            segmentControl.selectedSegmentIndex = 0
        }
        count1 += 1
    }

}
