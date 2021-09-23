//
//  ProfileViewController.swift
//  inst
//
//  Created by itisioslab on 21.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var subscribesLabel: UILabel!
    @IBOutlet weak var subsLabel: UILabel!
    @IBOutlet weak var pubsLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func directMeAction(_ sender: Any) {
        subscribesLabel.text = String(Int.random(in: 0...1000))
        subsLabel.text = String(Int.random(in: 0...1000))
        pubsLabel.text = String(Int.random(in: 0...1000))
        descriptionTextView.text = "блин под конец реально интересно стало, ты супер!"
    }
}
