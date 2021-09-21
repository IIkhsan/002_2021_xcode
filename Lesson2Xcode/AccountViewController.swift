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
    @IBOutlet weak var post1: UIImageView!
    @IBOutlet weak var post2: UIImageView!
    @IBOutlet weak var post3: UIImageView!
    
    @IBOutlet weak var story1: UIButton!
    @IBOutlet weak var story2: UIButton!
    @IBOutlet weak var story3: UIButton!
    
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "user64862452"
        postsLabel.text = "3"
        followersLabel.text = "6589"
        followingLabel.text = "56"
        images.append(UIImage(named: "sale") ?? UIImage())
        images.append(UIImage(named: "christmas") ?? UIImage())
        images.append(UIImage(named: "apple") ?? UIImage())
        images.append(UIImage(named: "ruby") ?? UIImage())
        images.append(UIImage(named: "app-store") ?? UIImage())
        images.append(UIImage(named: "atom") ?? UIImage())
        images.append(UIImage(named: "alcohol") ?? UIImage())
        
        post1.image = images[0]
        post2.image = images[1]
        post3.image = images[2]
        story1.imageView?.image = images[0]
        story2.imageView?.image = images[1]
        story3.imageView?.image = images[2]
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        
        postsLabel.text = String((Int(postsLabel.text ?? "0") ?? 0)+1)
        
        let followers = Int(followersLabel.text ?? "0")
        followersLabel.text = String((followers ?? 0) + 27)
        
        let following = Int(followingLabel.text ?? "0")
        followingLabel.text = String((following ?? 0) + 7)
        
        post1.image = images[Int.random(in: 0..<7)]
        post2.image = images[Int.random(in: 0..<7)]
        post3.image = images[Int.random(in: 0..<7)]
        story1.imageView?.image = images[Int.random(in: 0..<7)]
        story2.imageView?.image = images[Int.random(in: 0..<7)]
        story3.imageView?.image = images[Int.random(in: 0..<7)]
    }
}
