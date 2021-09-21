//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Arslan Rashidov on 21.09.2021.
//

import Foundation

import UIKit

class InstagramViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postsCountLabel: UILabel!
    @IBOutlet weak var followersCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personWebsite: UILabel!
    @IBOutlet weak var personInformationLabel: UILabel!
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var highlights1ImageView: UIImageView!
    @IBOutlet weak var highlights1Label: UILabel!
    @IBOutlet weak var highlights2ImageView: UIImageView!
    @IBOutlet weak var highlights2Label: UILabel!
    @IBOutlet weak var highlights3ImageView: UIImageView!
    @IBOutlet weak var highlights3Label: UILabel!
    @IBOutlet weak var sectionPickerImageView: UIImageView!
    @IBOutlet weak var photo1ImageView: UIImageView!
    @IBOutlet weak var photo2ImageView: UIImageView!
    @IBOutlet weak var photo3ImageView: UIImageView!
    @IBOutlet weak var photo4ImageView: UIImageView!
    @IBOutlet weak var photo5ImageView: UIImageView!
    @IBOutlet weak var photo6ImageView: UIImageView!
    @IBOutlet weak var photo7ImageView: UIImageView!
    @IBOutlet weak var photo8ImageView: UIImageView!
    @IBOutlet weak var photo9ImageView: UIImageView!
    @IBOutlet weak var photo10ImageView: UIImageView!
    @IBOutlet weak var photo11ImageView: UIImageView!
    @IBOutlet weak var photo12ImageView: UIImageView!
    
    var status: String = "status1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        status1()
    }
    
    
    @IBAction func messageAction(_ sender: Any) {
        if status == "status1"{
            status2()
        }
        else{
            status1()
        }
    }
    
    func status1(){
        nameLabel.text = "sproutsocial"
        postsCountLabel.text = "1,234"
        followersCountLabel.text = "1,567"
        followersCountLabel.text = "2,000"
        personNameLabel.text = "Sprout Social"
        personInformationLabel.text = "We build social media software that enables brands to leverage the power of social to grow their business. Sharing how we see social differently."
        personWebsite.text = "sprout.link/sproutsocial"
        
        profilePictureImageView.image = UIImage(named: "photo21")
        profilePictureImageView.layer.cornerRadius = 50
        
        followButton.layer.cornerRadius = 5
        
        messageButton.layer.cornerRadius = 5
        messageButton.layer.borderWidth = 0.5
        messageButton.layer.borderColor = UIColor.black.cgColor
        
        highlights1ImageView.image = UIImage(named: "Highlights1")
        highlights2ImageView.image = UIImage(named: "Highlights2")
        highlights3ImageView.image = UIImage(named: "Highlights3")
        
        highlights1Label.text = "moments"
        highlights2Label.text = "life"
        highlights3Label.text = "studying"
        
        sectionPickerImageView.image = UIImage(named: "sectionPick")
        
        photo1ImageView.image = UIImage(named: "photo20")
        photo2ImageView.image = UIImage(named: "photo19")
        photo3ImageView.image = UIImage(named: "photo18")
        photo4ImageView.image = UIImage(named: "photo17")
        photo5ImageView.image = UIImage(named: "photo16")
        photo6ImageView.image = UIImage(named: "photo15")
        photo7ImageView.image = UIImage(named: "photo14")
        photo8ImageView.image = UIImage(named: "photo13")
        photo9ImageView.image = UIImage(named: "photo12")
        photo10ImageView.image = UIImage(named: "photo11")
        photo11ImageView.image = UIImage(named: "photo10")
        
        status = "status1"
    }
    
    func status2(){
        nameLabel.text = "chloewest28"
        postsCountLabel.text = "5,671"
        followersCountLabel.text = "2,200"
        followersCountLabel.text = "1,350"
        personNameLabel.text = "Chloe West"
        personInformationLabel.text = "Content Marketing Manager at @vismeapp and Freelance Marketing Write  📍Charleston, SC"
        personWebsite.text = "chloesocial.com"
        
        profilePictureImageView.image = UIImage(named: "photo1")
        profilePictureImageView.layer.cornerRadius = 50
        
        followButton.layer.cornerRadius = 5
        
        messageButton.layer.cornerRadius = 5
        messageButton.layer.borderWidth = 0.5
        messageButton.layer.borderColor = UIColor.black.cgColor
        
        highlights1ImageView.image = UIImage(named: "Highlights2")
        highlights2ImageView.image = UIImage(named: "Highlights3")
        highlights3ImageView.image = UIImage(named: "Highlights1")
        
        highlights1Label.text = "PC"
        highlights2Label.text = "Laptop"
        highlights3Label.text = "Phone"
        
        sectionPickerImageView.image = UIImage(named: "sectionPick")
        
        photo1ImageView.image = UIImage(named: "photo2")
        photo2ImageView.image = UIImage(named: "photo3")
        photo3ImageView.image = UIImage(named: "photo4")
        photo4ImageView.image = UIImage(named: "photo5")
        photo5ImageView.image = UIImage(named: "photo6")
        photo6ImageView.image = UIImage(named: "photo7")
        photo7ImageView.image = UIImage(named: "photo8")
        photo8ImageView.image = UIImage(named: "photo9")
        photo9ImageView.image = UIImage(named: "photo10")
        photo10ImageView.image = UIImage(named: "photo11")
        photo11ImageView.image = UIImage(named: "photo12")
        
        status = "status2"
    }
}
