//
//  ProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Роман Сницарюк on 15.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followsLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var roadButton: UIButton!
    @IBOutlet weak var writeButton: UIButton!
    @IBOutlet weak var firstStoryImageView: UIImageView!
    @IBOutlet weak var secondStoryImageView: UIImageView!
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    @IBOutlet weak var firstStoryTextLabel: UILabel!
    @IBOutlet weak var secondStoryTextLabel: UILabel!
    @IBOutlet weak var thirdStoryTextLabel: UILabel!
    @IBOutlet weak var firstPhoto: UIImageView!
    @IBOutlet weak var secondPhoto: UIImageView!
    @IBOutlet weak var thirdPhoto: UIImageView!
    @IBOutlet weak var scrollview: UIScrollView!
    
    //MARK: - Var
    let photos = ["1", "2", "3", "4"]
    let phrases = ["sixzr", "hello", "hi", "tell me"]
    let nicks = ["sixz.r", "asfds.sd", "hello.here"]
    
    //MARK: - View controller's cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        fill()
    }
    
    //MARK: - Button's actions
    @IBAction func writeButtonTapped(_ sender: Any) {
        fill()
    }
    
    //MARK: - Helpers
    private func configure() {
        scrollview.contentSize = CGSize(width: view.bounds.width, height: 1200)
        postsLabel.text = "3"
        
        callButton.layer.borderWidth = 1
        callButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        roadButton.layer.borderWidth = 1
        roadButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        writeButton.layer.borderWidth = 1
        writeButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    private func fill() {
        title = nicks.randomElement()
        
        avatarImageView.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        bioLabel.text = phrases.randomElement()
        
        firstStoryImageView.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        firstStoryTextLabel.text = phrases.randomElement()
        
        secondStoryImageView.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        secondStoryTextLabel.text = phrases.randomElement()
        
        thirdStoryImageView.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        thirdStoryTextLabel.text = phrases.randomElement()
        
        followsLabel.text = String(Int.random(in: 0...1000))
        followersLabel.text = String(Int.random(in: 0...1000))
        
        firstPhoto.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        secondPhoto.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
        thirdPhoto.image = photos.compactMap({ UIImage(named: $0) }).randomElement()
    }
}
