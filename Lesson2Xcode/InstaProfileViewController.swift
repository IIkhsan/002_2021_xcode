//
//  InstaProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Marat Giniyatov on 19.09.2021.
//

import UIKit

class InstaProfileViewController: UIViewController {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var publicationsLabel: UILabel!
    @IBOutlet weak var subscribersLabel: UILabel!
    @IBOutlet weak var subscriptionsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var routeButton: UIButton!
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var fistStoryImageView: UIImageView!
    @IBOutlet weak var secondStoryImageView: UIImageView!
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    @IBOutlet weak var firstStoryLabel: UILabel!
    @IBOutlet weak var secondStoryLabel: UILabel!
    @IBOutlet weak var thirdStoryLabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateProfile()
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        callButton.layer.borderWidth = 1.0
        routeButton.layer.borderWidth = 1.0
        sendMessageButton.layer.borderWidth = 1.0
    }
    @IBAction func sendMessageAction(_ sender: Any) {
        generateProfile()
        
    }
    
    func generateProfile() {
        let value = profiles[Int.random(in: 0..<3)]
        avatarImageView.image = value.avatar
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
        avatarImageView.layer.borderColor = UIColor.black.cgColor
        avatarImageView.layer.borderWidth = 1.0
        publicationsLabel.text = String(value.publicationsCount)
        subscribersLabel.text = String(value.subscribersCount)
        subscriptionsLabel.text = String(value.subscriptionCount)
        fistStoryImageView.image = value.stories[0].image
        fistStoryImageView.layer.cornerRadius = fistStoryImageView.bounds.width / 2
        fistStoryImageView.layer.borderColor = UIColor.black.cgColor
        fistStoryImageView.layer.borderWidth = 1.0
        firstStoryLabel.text = value.stories[0].text
        print(value.stories[0].text)
        secondStoryImageView.image = value.stories[1].image
        secondStoryImageView.layer.cornerRadius = secondImageView.bounds.width / 2
        secondStoryImageView.layer.borderColor = UIColor.black.cgColor
        secondStoryImageView.layer.borderWidth = 1.0
        secondStoryLabel.text = value.stories[1].text
        thirdStoryImageView.image = value.stories[2].image
        thirdStoryImageView.layer.cornerRadius = thirdStoryImageView.bounds.width / 2
        thirdStoryImageView.layer.borderColor = UIColor.black.cgColor
        thirdStoryImageView.layer.borderWidth = 1.0
        thirdStoryLabel.text = value.stories[2].text
        firstImageView.image = value.publications[0]
        secondImageView.image = value.publications[1]
        thirdImageView.image = value.publications[2]
        nameLabel.text = value.username
        descriptionLabel.text = value.description
    }
}
