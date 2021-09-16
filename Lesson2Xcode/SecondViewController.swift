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
    
    @IBOutlet weak var switchq: UISwitch!
    
    let arr = ["ds","ab","qwe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        swap()
    }
    
    
    func swap() {
        label.text = arr.randomElement()!
        textField.text = arr.randomElement()!
        switchq.isOn.toggle()
    }

}
