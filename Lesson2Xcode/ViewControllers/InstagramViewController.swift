//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Руслан on 17.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    
    @IBOutlet weak var usernameNavigationItem: UINavigationItem!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var postsCounterLabel: UILabel!
    @IBOutlet weak var followersCounterLabel: UILabel!
    @IBOutlet weak var followingCounterLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var storiesImageViews: [UIImageView]!
    @IBOutlet var storiesNamesImageViews: [UILabel]!
    @IBOutlet var postsImageViews: [UIImageView]!
    
    var user: User = users.randomElement()!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViews()
        configureUserInfo(user)
    }
    
    private func configureViews() {
        logoImageView.layer.cornerRadius = 50
        for story in storiesImageViews {
            story.layer.cornerRadius = 35
        }
        for button in buttons {
            button.layer.cornerRadius = 5
            button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            button.layer.borderWidth = 1
        }
    }
    
    private func configureUserInfo(_ user: User) {
        usernameNavigationItem.title = user.username
        logoImageView.image = user.logo
        postsCounterLabel.text = String(user.posts.count)
        followersCounterLabel.text = user.followersCount
        followingCounterLabel.text = String(user.followingCount)
        nameLabel.text = user.name
        descriptionLabel.text = user.description
        
        for (index, story) in storiesImageViews.enumerated() {
            story.image = user.stories[index].image
        }
        for (index, story) in storiesNamesImageViews.enumerated() {
            story.text = user.stories[index].name
        }
        for (index, post) in postsImageViews.enumerated() {
            post.image = user.posts[index]
        }
    }
    
    @IBAction func messageButtonAction(_ sender: UIButton) {
        user = users.randomElement()!
        configureUserInfo(user)
    }
    
}

