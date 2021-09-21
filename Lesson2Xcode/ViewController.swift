//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var componentsButton: UIButton!
    @IBOutlet weak var instagramButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        componentsButton.layer.cornerRadius = 15
        instagramButton.layer.cornerRadius = 15
    }
}
