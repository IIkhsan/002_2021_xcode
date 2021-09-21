//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Алексей Горбунов on 20.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    
    private let profiles: [Profile] =
    [
        Profile(name: "PraiseTheSun", publicationsCount: "3", followersCount: "160", subscriptionsCount: "12", avatar: UIImage(named: "synth1") ?? UIImage(), firstPublication: UIImage(named: "synth2") ?? UIImage(), secondPublication: UIImage(named: "synth3") ?? UIImage(), thirdPublication: UIImage(named: "synth4") ?? UIImage(), firstStory: UIImage(named: "synth5") ?? UIImage(),
            secondStory: UIImage(named: "synth6") ?? UIImage()),
        Profile(name: "I_Love_Fruits!", publicationsCount: "3", followersCount: "999", subscriptionsCount: "5882", avatar: UIImage(named: "fruit1") ?? UIImage(), firstPublication: UIImage(named: "fruit2") ?? UIImage(), secondPublication: UIImage(named: "fruit3") ?? UIImage(), thirdPublication: UIImage(named: "fruit4") ?? UIImage(), firstStory: UIImage(named: "fruit5") ?? UIImage(), secondStory: UIImage(named: "fruit6") ?? UIImage()),
        Profile(name: "MusicalInstruments!", publicationsCount: "3", followersCount: "12983", subscriptionsCount: "88", avatar: UIImage(named: "music1") ?? UIImage(), firstPublication: UIImage(named: "music2") ?? UIImage(), secondPublication: UIImage(named: "music3") ?? UIImage(), thirdPublication: UIImage(named: "music4") ?? UIImage(), firstStory: UIImage(named: "music5") ?? UIImage(), secondStory: UIImage(named: "music6") ?? UIImage())
    ]
    
    private var i: Int = 0
        
    @IBOutlet weak var publicationsCount: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var subscriptionsCount: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var firstStory: UIImageView!
    @IBOutlet weak var secondStory: UIImageView!
    @IBOutlet weak var addStory: UIImageView!
    
    @IBOutlet weak var firstPublication: UIImageView!
    @IBOutlet weak var secondPublication: UIImageView!
    @IBOutlet weak var thirdPublication: UIImageView!
    

    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var place: UIButton!
    @IBOutlet weak var message: UIButton!
    
    
    @IBAction func messageButton(_ sender: Any) {
        setProfile()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.layer.cornerRadius = avatar.frame.height/2
        
        message.layer.borderWidth = 1
        message.layer.borderColor = UIColor.black.cgColor
        message.layer.cornerRadius = message.frame.height/2

        call.layer.borderWidth = 1
        call.layer.borderColor = UIColor.black.cgColor
        call.layer.cornerRadius = call.frame.height/2
        
        place.layer.borderWidth = 1
        place.layer.borderColor = UIColor.black.cgColor
        place.layer.cornerRadius = place.frame.height/2
        
        firstStory.layer.cornerRadius = firstStory.frame.height/2
        secondStory.layer.cornerRadius = 45
        addStory.image = UIImage (named: "plus") ?? UIImage()
        
        
        setProfile()
    }
    
    private func setProfile() {
        name.text = profiles[i].name
        navigationItem.title = name.text
        
        avatar.image = profiles[i].avatar
        
        publicationsCount.text = profiles[i].publicationsCount
        followersCount.text = profiles[i].followersCount
        subscriptionsCount.text = profiles[i].subscriptionsCount
        
        firstStory.image = profiles[i].firstStory
        secondStory.image = profiles[i].secondStory
        
        firstPublication.image = profiles[i].firstPublication
        secondPublication.image = profiles[i].secondPublication
        thirdPublication.image = profiles[i].thirdPublication
        
        if i != 2 {
            i += 1
        } else {
            i = 0
        }
    }
}

struct Profile {
    let name: String
    let publicationsCount: String
    let followersCount: String
    let subscriptionsCount: String
    
    let avatar: UIImage?
    
    let firstPublication: UIImage?
    let secondPublication: UIImage?
    let thirdPublication: UIImage?
    
    let firstStory: UIImage?
    let secondStory: UIImage?
}
