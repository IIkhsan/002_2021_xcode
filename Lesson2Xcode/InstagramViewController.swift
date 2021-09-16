//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Семен Соколов on 15.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var postLabel: UILabel!
    
    @IBOutlet weak var postCounterLabel: UILabel!
    
    @IBOutlet weak var subscribersLabel: UILabel!
    
    @IBOutlet weak var subscribersCounterLabel: UILabel!
    
    @IBOutlet weak var subscriptionsLabel: UILabel!
    
    @IBOutlet weak var subscriptionsCounterLabel: UILabel!
    
    @IBOutlet weak var callButton: UIButton!
    
    @IBOutlet weak var wayButton: UIButton!
    
    @IBOutlet weak var writeButton: UIButton!
    
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var firstStoryImageView: UIImageView!
    
    @IBOutlet weak var firstStoryLabel: UILabel!
    
    @IBOutlet weak var secondStoryImageView: UIImageView!
    
    @IBOutlet weak var secondStoryLabel: UILabel!
    
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    
    @IBOutlet weak var thirdStoryLabel: UILabel!
    
    @IBOutlet weak var firstPhotoImageView: UIImageView!
    
    @IBOutlet weak var secondPhotoImageView: UIImageView!
    
    @IBOutlet weak var thirdPhotoImageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let profileImages = [
        UIImage(named: "narutoProfile"),
        UIImage(named: "hinataProfile"),
        UIImage(named: "sasukeProfile"),
    ] 
    
    let profileNames = ["animeFan", "deadInside", "swiftDeveloper"]
    
    let discriptions = ["мертв внутри", "смотрю аниме", "учу свифт 24 на 7"]
    
    let phrases = ["day", "midnight", "something"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        update()
    }
    
    @IBAction func writeButton(_ sender: Any) {
        update()
    }
    
    func update() {
        title = profileNames.randomElement()
        profileImageView.image = profileImages.randomElement()!
        subscribersCounterLabel.text = String(Int.random(in: 5...1000))
        subscriptionsCounterLabel.text = String(Int.random(in: 5...1000))
        firstStoryLabel.text = phrases.randomElement()
        secondStoryLabel.text = phrases.randomElement()
        thirdStoryLabel.text = phrases.randomElement()
        bioLabel.text = discriptions.randomElement()
        firstPhotoImageView.image = profileImages.randomElement()!
        secondPhotoImageView.image = profileImages.randomElement()!
        thirdPhotoImageView.image = profileImages.randomElement()!
        firstStoryImageView.image = profileImages.randomElement()!
        secondStoryImageView.image = profileImages.randomElement()!
        thirdStoryImageView.image = profileImages.randomElement()!
    }
    
}
