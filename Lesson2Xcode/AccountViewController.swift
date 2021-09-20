//
//  AccountViewController.swift
//  Lesson2Xcode
//
//  Created by andrewoch on 19.09.2021.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "user64862452"
        postsLabel.text = "3"
        followersLabel.text = "6589"
        followingLabel.text = "56"
    }
    
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        postsLabel.text = "3"
        followersLabel.text = String( Int(followersLabel.text ?? "0") ?? 0 + 27)
        followingLabel.text = String( Int(followingLabel.text ?? "0") ?? 0 + 7)
    }
}
