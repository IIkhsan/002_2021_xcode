//
//  ProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Роман Сницарюк on 15.09.2021.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDataSource {
    //MARK: - Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followsLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var roadButton: UIButton!
    @IBOutlet weak var writeButton: UIButton!
    @IBOutlet weak var photosCollection: UICollectionView!
    @IBOutlet weak var firstStoryImageView: UIImageView!
    @IBOutlet weak var secondStoryImageView: UIImageView!
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    @IBOutlet weak var firstStoryTextLabel: UILabel!
    @IBOutlet weak var secondStoryTextLabel: UILabel!
    @IBOutlet weak var thirdStoryTextLabel: UILabel!
    
    //MARK: - Var
    let photos = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!]
    let phrases = ["sixzr", "hello", "hi", "tell me"]
    let nicks = ["sixz.r", "asfds.sd", "hello.here"]
    
    //MARK: - View controller's cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photosCollection.delegate = self
        photosCollection.dataSource = self
        
        configure()
        fill()
    }
    
    //MARK: - CollectionView's data soourse
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.configure(with: photos.randomElement()!)
        
        return cell
    }
    
    //MARK: - Button's actions
    @IBAction func writeButtonTapped(_ sender: Any) {
        fill()
    }
    
    //MARK: - Helpers
    func configure() {
        postsLabel.text = "3"
        
        callButton.layer.borderWidth = 1
        callButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        roadButton.layer.borderWidth = 1
        roadButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        writeButton.layer.borderWidth = 1
        writeButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    func fill() {
        title = nicks.randomElement()!
        
        avatarImageView.image = photos.randomElement()!
        bioLabel.text = phrases.randomElement()!
        
        firstStoryImageView.image = photos.randomElement()!
        firstStoryTextLabel.text = phrases.randomElement()!
        
        secondStoryImageView.image = photos.randomElement()!
        secondStoryTextLabel.text = phrases.randomElement()!
        
        thirdStoryImageView.image = photos.randomElement()!
        thirdStoryTextLabel.text = phrases.randomElement()!
        
        followsLabel.text = String(Int.random(in: 0...1000))
        followersLabel.text = String(Int.random(in: 0...1000))
        
        DispatchQueue.main.async {
            self.photosCollection.reloadData()
        }
    }
}
