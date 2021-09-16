//
//  TestViewController.swift
//  Lesson2Xcode
//
//  Created by Роман Сницарюк on 15.09.2021.
//

import UIKit

class TestViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var testSwitch: UISwitch!
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var changeButton: UIButton!
    
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
    
    //MARK: - Helpers
    func configure() {
        changeButton.layer.borderWidth = 1
        changeButton.layer.cornerRadius = 15
        changeButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        changeButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
       
        textLabel.text = values.randomElement()
        testSwitch.isOn.toggle()
        testTextField.text = values.randomElement()
    }
    
    func randomValues() {
        textLabel.text = values.randomElement()
        testSwitch.isOn.toggle()
        testTextField.text = values.randomElement()
    }
}
