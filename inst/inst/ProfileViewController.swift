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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func directMeAction(_ sender: Any) {
        let value = Int.random(in: 1...1000)
        let valueToString: String = String(value)
        subscribesLabel.text = valueToString
        subsLabel.text = valueToString
        pubsLabel.text = valueToString
        descriptionTextView.text = "нет"
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
