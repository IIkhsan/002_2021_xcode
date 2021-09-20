//
//  ProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Artem Kalugin on 19.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var organizationLabel: UILabel!
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    
    @IBOutlet weak var secondStoryNameLabel: UILabel!
    @IBOutlet weak var storyNameLabel: UILabel!
    @IBOutlet weak var thirdStoryNameLabel: UILabel!
    
    @IBOutlet weak var firstStory: UIImageView!
    @IBOutlet weak var secondStory: UIImageView!
    @IBOutlet weak var thirdStory: UIImageView!
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var howToGetButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    
    var images = ["1picture.jpeg", "2picture.jpeg", "3picture.jpeg", "4picture.jpeg", "5picture.jpeg", "6picture.jpeg", "7picture.jpeg", "8picture.jpeg", "9picture.jpeg", "10picture.jpeg"]
    var nicknames = ["artemKalugin08", "nnnnn_nnnnn", "asherney.jewerly"]
    var storyNames = ["NY", "LS", "Moments", "Pandemic", "GQ", "Russia"]
    var links = ["https://www.google.ru", "https://www.youtube.com"]
    var organizations = ["Google", "Amazon", "DNS"]
    var additions = ["First state representation", "The best store in the world", "Don't go to english lessons"]
    
    @IBAction func messageButtonAction(_ sender: Any) {
        guard let avatarRandomImage = images.randomElement() else { return }
        guard let firstStoryRandomImage = images.randomElement() else { return }
        guard let secondStoryRandomImage = images.randomElement() else { return }
        guard let thirdStoryRandomImage = images.randomElement() else { return }
        guard let firstImageRandomImage = images.randomElement() else { return }
        guard let secondImageRandomImage = images.randomElement() else { return }
        guard let thirdImageRandomImage = images.randomElement() else { return }
       
        avatar.image = UIImage(named: avatarRandomImage)
        firstStory.image = UIImage(named: firstStoryRandomImage)
        secondStory.image = UIImage(named: secondStoryRandomImage)
        thirdStory.image = UIImage(named: thirdStoryRandomImage)
        
        firstImage.image = UIImage(named: firstImageRandomImage)
        secondImage.image = UIImage(named: secondImageRandomImage)
        thirdImage.image = UIImage(named: thirdImageRandomImage)
        
        navigationItem.title = nicknames.randomElement()
        
        followersLabel.text = String(Int.random(in: 100...1000))
        followingLabel.text = String(Int.random(in: 10...1000))
        
        organizationLabel.text = organizations.randomElement()
        additionLabel.text = additions.randomElement()
        linkLabel.text = links.randomElement()
        
        storyNameLabel.text = storyNames.randomElement()
        secondStoryNameLabel.text = storyNames.randomElement()
        thirdStoryNameLabel.text = storyNames.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let avatarRandomImage = images.randomElement() else { return }
        guard let firstStoryRandomImage = images.randomElement() else { return }
        guard let secondStoryRandomImage = images.randomElement() else { return }
        guard let thirdStoryRandomImage = images.randomElement() else { return }
        guard let firstImageRandomImage = images.randomElement() else { return }
        guard let secondImageRandomImage = images.randomElement() else { return }
        guard let thirdImageRandomImage = images.randomElement() else { return }
        
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        
        navigationItem.title = nicknames.randomElement()
        
        avatar.image = UIImage(named: avatarRandomImage)
        avatar.layer.cornerRadius = avatar.frame.size.width / 2
        avatar.contentMode = .scaleAspectFill
        avatar.layer.borderWidth = 3.0
        avatar.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        avatar.layer.masksToBounds = true
        
        firstImage.image = UIImage(named: firstImageRandomImage)
        secondImage.image = UIImage(named: secondImageRandomImage)
        thirdImage.image = UIImage(named: thirdImageRandomImage)
        
        firstStory.image = UIImage(named: firstStoryRandomImage)
        secondStory.image = UIImage(named: secondStoryRandomImage)
        thirdStory.image = UIImage(named: thirdStoryRandomImage)
        
        followersLabel.text = String(Int.random(in: 100...1000))
        followingLabel.text = String(Int.random(in: 10...1000))
        
        organizationLabel.text = organizations.randomElement()
        additionLabel.text = additions.randomElement()
        linkLabel.text = links.randomElement()
        
        firstStory.layer.cornerRadius = firstStory.frame.size.width / 2
        firstStory.contentMode = .scaleAspectFill
        firstStory.layer.borderWidth = 3.0
        firstStory.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        firstStory.layer.masksToBounds = true

        secondStory.layer.cornerRadius = secondStory.frame.size.width / 2
        secondStory.contentMode = .scaleAspectFill
        secondStory.layer.borderWidth = 3.0
        secondStory.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        secondStory.layer.masksToBounds = true

        thirdStory.layer.cornerRadius = thirdStory.frame.size.width / 2
        thirdStory.contentMode = .scaleAspectFill
        thirdStory.layer.borderWidth = 3.0
        thirdStory.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        thirdStory.layer.masksToBounds = true
        
        callButton.layer.cornerRadius = 5
        callButton.layer.borderWidth = 1.0
        callButton.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        callButton.clipsToBounds = true
        
        messageButton.layer.cornerRadius = 5
        messageButton.layer.borderWidth = 1.0
        messageButton.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        messageButton.clipsToBounds = true
        
        howToGetButton.layer.cornerRadius = 5
        howToGetButton.layer.borderWidth = 1.0
        howToGetButton.layer.borderColor = (UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 1.0)).cgColor
        howToGetButton.clipsToBounds = true
    }
}
