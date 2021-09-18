//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Alexandr Onischenko on 18.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var historyImage1: UIImageView!
    @IBOutlet weak var historyImage2: UIImageView!
    @IBOutlet weak var historyImage3: UIImageView!
    @IBOutlet weak var postImage1: UIImageView!
    @IBOutlet weak var postImage2: UIImageView!
    @IBOutlet weak var postImage3: UIImageView!
    
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var detailsButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    
    @IBOutlet weak var followersNumberLabel: UILabel!
    @IBOutlet weak var postsNumberLabel: UILabel!
    @IBOutlet weak var followingNumberLabel: UILabel!
    
    var images: [UIImage] = [UIImage(named: "Avatar.png")!, UIImage(named: "Image.png")!, UIImage(named: "Image-1.png")!, UIImage(named: "Image-2.png")!]
        
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        historyImage1.layer.cornerRadius = historyImage1.frame.height / 2
        historyImage2.layer.cornerRadius = historyImage2.frame.height / 2
        historyImage3.layer.cornerRadius = historyImage3.frame.height / 2
        
        followButton.layer.cornerRadius = 4
        setBeautifulButton(button: messageButton)
        setBeautifulButton(button: detailsButton)
        setBeautifulButton(button: callButton)
    }
    
    @IBAction func updateData(_ sender: Any) {
        let imageViews: [UIImageView] = [avatarImage, historyImage1, historyImage2, historyImage3, postImage1, postImage2, postImage3]
        for imageView in imageViews {
            imageView.image = images[Int.random(in: 0..<images.count)]
        }
        
        postsNumberLabel.text = "\(Int.random(in: 0...1000))"
        followersNumberLabel.text = "\(Int.random(in: 0...1000))"
        followingNumberLabel.text = "\(Int.random(in: 0...1000))"
        
    }
    
    func setBeautifulButton(button: UIButton) {
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
    }
    

}
