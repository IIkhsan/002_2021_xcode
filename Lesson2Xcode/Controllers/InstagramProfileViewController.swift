//
//  InstagramProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Evans Owamoyo on 17.09.2021.
//

import UIKit

class InstagramProfileViewController: UIViewController {
    // labels
    
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    // buttons
    @IBOutlet weak var messageBtn: UIButton!
    @IBOutlet weak var reachBtn: UIButton!
    @IBOutlet weak var callBtn: UIButton!
    @IBOutlet weak var editProfileBtn: UIButton!
    // imageviews
    @IBOutlet weak var imgSlot1: UIImageView!
    @IBOutlet weak var imgSlot2: UIImageView!
    @IBOutlet weak var imgSlot3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfileBtn.makeInstaButton()
        messageBtn.makeInstaButton()
        reachBtn.makeInstaButton()
        callBtn.makeInstaButton()
    }
    
    @IBAction func otherButtonPressed(_ sender: UIButton) {
        // animation that prompts user to click only the `call` button
        
        let anim = CABasicAnimation(keyPath: "borderWidth")
        anim.fromValue = 1
        anim.toValue = 5
        anim.duration = 0.3
        callBtn.layer.add(anim, forKey: "Width")
        
        // restore state
        callBtn.layer.borderWidth = 1
    }
    
    @IBAction func onCallClicked(_ sender: UIButton) {
        let n = (1...13).shuffled()
        
        // update the posts
        imgSlot1.image = UIImage(named: "post\(n[0])")
        imgSlot2.image = UIImage(named: "post\(n[1])")
        imgSlot3.image = UIImage(named: "post\(n[2])")
        
        // update the followers count
        followersLabel.text = "\(Int.random(in: 200...1000))"
        followingLabel.text = "\(Int.random(in: 200...1000))"
    }
}
