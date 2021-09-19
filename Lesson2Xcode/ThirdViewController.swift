//
//  ThirdViewController.swift
//  Lesson2Xcode
//
//  Created by Даниил Багаутдинов on 15.09.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var firstPostImageView: UIImageView!
    @IBOutlet weak var thirdStoryLabel: UILabel!
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    
    @IBOutlet weak var thirdPostImageView: UIImageView!
    @IBOutlet weak var secondPostImageView: UIImageView!
    @IBOutlet weak var secondStoryLabel: UILabel!
    @IBOutlet weak var secondStoryImageView: UIImageView!
    @IBOutlet weak var firstStoryLabel: UILabel!
    @IBOutlet weak var firstStoryImageView: UIImageView!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let photos = [UIImage(named: "1"),
                  UIImage(named: "2"),
                  UIImage(named: "3"),
                  UIImage(named: "4"),
                  UIImage(named: "5")]
    
    let nicknames = ["dead inside","gul","karbiz1234"]
    
    let titles = ["ya est gul", "hello world!","programmer"]
    
    let storyTitles = ["Leto","Zima","Vesna","Osen`"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        mix()
        
    }
    
    @IBAction func messageButton(_ sender: Any) {
        mix()
    }
    func mix() {
        navigationItem.title = nicknames.randomElement()
        profileImageView.image = photos.randomElement() ?? UIImage(named: "1")
        firstPostImageView.image = photos.randomElement() ?? UIImage(named: "1")
        secondPostImageView.image = photos.randomElement() ?? UIImage(named: "1")
        thirdPostImageView.image = photos.randomElement() ?? UIImage(named: "1")
        postsLabel.text = "3"
        followingLabel.text = "\(Int.random(in: 50...1000))"
        followersLabel.text = "\(Int.random(in: 50...1000))"
        bioLabel.text = titles.randomElement()
        firstStoryImageView.image = photos.randomElement() ?? UIImage(named: "1")
        secondStoryImageView.image = photos.randomElement() ?? UIImage(named: "1")
        thirdStoryImageView.image = photos.randomElement() ?? UIImage(named: "1")
        firstStoryLabel.text = storyTitles.randomElement()
        secondStoryLabel.text = storyTitles.randomElement()
        thirdStoryLabel.text = storyTitles.randomElement()
    }
}
