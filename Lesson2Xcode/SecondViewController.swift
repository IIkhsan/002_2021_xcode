//
//  SecondViewController.swift
//  Lesson2Xcode
//
//  Created by Семен Соколов on 15.09.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var swith: UISwitch!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var changeButton: UIButton!
    
    let profileImages = [
        UIImage(named: "narutoProfile"),
        UIImage(named: "hinataProfile"),
        UIImage(named: "sasukeProfile"),
    ]
    
    let randomPhrases = ["gg", "strong", "fast"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateButton(_ sender: Any) {
        update()
    }
    
    func update() {
        imageView.image = profileImages.randomElement()!
        label.text = randomPhrases.randomElement()
        swith.isOn.toggle()
        textField.backgroundColor = .red
    }
    
}
