//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Алсу Хайруллина on 20.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var publicationsLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var stories1ImageView: UIImageView!
    @IBOutlet weak var stories3ImageView: UIImageView!
    @IBOutlet weak var stories2ImageView: UIImageView!
    @IBOutlet weak var post1ImageView: UIImageView!
    @IBOutlet weak var post2ImageView: UIImageView!
    @IBOutlet weak var post3ImageView: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var directButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        directButton.layer.borderWidth = 0.25
        directButton.layer.cornerRadius = 5
        followButton.layer.cornerRadius = 5
        userImageView.layer.cornerRadius = 50
        userImageView.image = UIImage(named: "userPic")
        
        stories1ImageView.layer.cornerRadius = 50
        stories1ImageView.image = UIImage(named: "geo")
        stories2ImageView.layer.cornerRadius = stories2ImageView.frame.size.width/2
        stories2ImageView.image = UIImage(named: "dvorec")
        stories3ImageView.layer.cornerRadius = 50
        stories3ImageView.image = UIImage(named: "topaz")
        
        
        post1ImageView.image = UIImage(named: "junli")
        post2ImageView.image = UIImage(named: "kazuha")
        post3ImageView.image = UIImage(named: "Liyue")
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 1000)
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func directButton(_ sender: Any) {
        
        var postImages: [UIImage] = [
            UIImage(named: "kazuha")!,
            UIImage(named: "geo")!,
            UIImage(named: "molitva")!,
            UIImage(named: "nin")!,
            UIImage(named: "kamen")!,
            UIImage(named: "dvorec")!,
            UIImage(named: "junli")!,
            UIImage(named: "Liyue")!,
            UIImage(named: "topaz")!,
        ]
        
        followersLabel.text = String(Int.random(in: 1..<1000))
        followingLabel.text = String(Int.random(in: 1..<1000))
        
        post1ImageView.image = postImages.randomElement()
        post2ImageView.image = postImages.randomElement()
        post3ImageView.image = postImages.randomElement()
        
    }
}
