//
//  ComponentsViewController.swift
//  Lesson2Xcode
//
//  Created by Алексей Горбунов on 20.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var sg1: UISegmentedControl!
    @IBOutlet weak var pv1: UIProgressView!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var changeEverythingButton: UIButton!
    
    @IBAction func button1Tapped(_ sender: Any) {
        if button1.backgroundColor == .black {
            button1.backgroundColor = .white
            button1.setTitleColor(.black, for: .normal)
            button1.layer.borderColor = UIColor.black.cgColor
        } else {
            button1.backgroundColor = .black
            button1.setTitleColor(.white, for: .normal)
            button1.layer.borderColor = UIColor.black.cgColor
        }
    }
    

    @IBAction func switch1Tapped(_ sender: Any) {
        if sg1.selectedSegmentIndex == 0 {
            sg1.selectedSegmentIndex = 1
        } else {
            sg1.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func sg1Tapped(_ sender: Any) {
        if switch1.isOn {
            switch1.isOn = false
        } else {
            switch1.isOn = true
        }
    }
    
    @IBAction func slider1Action(_ sender: Any) {
        pv1.progress = slider1.value
    }
    
    @IBAction func stepper1Action(_ sender: Any) {
        label1.font = UIFont.systemFont(ofSize: CGFloat(Int(stepper1.value))*5)
    }
    
    @IBAction func All(_ sender: Any) {
        button1Tapped((Any).self)
        switch1Tapped((Any).self)
        sg1Tapped((Any).self)
        
        if slider1.value == 0 {
            slider1.value = 100
        } else {
            slider1.value = 0
        }
        
        if label1.text == "Hello" {
            label1.text = "Hi"
        } else {
            label1.text = "Hello"
        }
        
        slider1Action((Any).self)
        stepper1Action((Any).self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1
        button1.layer.cornerRadius = 15
        
        switch1.onTintColor = .black
        
        stepper1.value = 5
        
        changeEverythingButton.layer.cornerRadius = 15

    }
}
