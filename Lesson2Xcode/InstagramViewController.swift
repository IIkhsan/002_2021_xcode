//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Danil Gerasimov on 17.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var placeButton: UIButton!
    @IBOutlet weak var editInfoButton: UIButton!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userFullNameLabel: UILabel!
    @IBOutlet weak var userSpecialityLabel: UILabel!
    @IBOutlet weak var userDescriptionLabel: UILabel!
    @IBOutlet weak var userPublicationAmountLabel: UILabel!
    @IBOutlet weak var userSubscribersAmountLabel: UILabel!
    @IBOutlet weak var userSubscriptionAmountLabel: UILabel!
    @IBOutlet weak var firstHighlightImage: UIImageView!
    @IBOutlet weak var secondHighlightImage: UIImageView!
    @IBOutlet weak var thirdHighlightImage: UIImageView!
    @IBOutlet weak var addNewHighlightImage: UIImageView!
    @IBOutlet weak var thirdUserPostImage: UIImageView!
    @IBOutlet weak var secondUserPostImage: UIImageView!
    @IBOutlet weak var firstUserPostImage: UIImageView!
    @IBOutlet weak var usernameNavigationItem: UINavigationItem!
    @IBOutlet weak var scrollView: UIScrollView!
    let firstUser: InstagramUser = InstagramUser(username: "gdan", userImage: UIImage(named: "userImage")!, userFullName: "Dan Gerasimov", userSpeciality: "Comedian", userDescription: "Cool guy", userPublicationAmount: 3, userSubscribersAmount: 500, userSubscriptionAmount: 2, firstHighlightImage: UIImage(named: "firstUserFirstHighlightImage")!, secondHighlightImage: UIImage(named: "firstUserSecondHighlightImage")!, thirdHighlightImage: UIImage(named: "firstUserSecondHighlightImage")!, thirdUserPostImage: UIImage(named: "thirdUserPostImage")!, secondUserPostImage: UIImage(named: "secondUserPostImage")!, firstUserPostImage: UIImage(named: "firstUserPostImage")!)
    let secondUser: InstagramUser = InstagramUser(username: "robertdowneyjr", userImage: UIImage(named: "secondUserImage")!, userFullName: "Robert Downey Jr.", userSpeciality: "Actor", userDescription: "Iron man", userPublicationAmount: 3, userSubscribersAmount: 999, userSubscriptionAmount: 1, firstHighlightImage: UIImage(named: "secondUserFirstHighlightImage")!, secondHighlightImage: UIImage(named: "secondUserSecondHighlightImage")!, thirdHighlightImage: UIImage(named: "secondUserThirdHighlightImage")!, thirdUserPostImage: UIImage(named: "post3")!, secondUserPostImage: UIImage(named: "post2")!, firstUserPostImage: UIImage(named: "post1")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFirstUserInfo()
        
        changeButton.layer.borderColor = UIColor.systemGray2.cgColor
        placeButton.layer.borderColor = UIColor.systemGray2.cgColor
        editInfoButton.layer.borderColor = UIColor.systemGray2.cgColor
        
        scrollView.contentSize = CGSize(width: 320, height:1000)
    }
    @IBAction func switchAccount(_ sender: UIButton) {
        if usernameNavigationItem.title == "gdan" {
            setSecondUserInfo()
        } else if usernameNavigationItem.title == "robertdowneyjr" {
            setFirstUserInfo()
        }
    }
    
    func setFirstUserInfo() {
        usernameNavigationItem.title = firstUser.username
        userImage.image = firstUser.userImage
        userFullNameLabel.text = firstUser.userFullName
        userSpecialityLabel.text = firstUser.userSpeciality
        userDescriptionLabel.text = firstUser.userDescription
        userPublicationAmountLabel.text = String(firstUser.userPublicationAmount)
        userSubscribersAmountLabel.text = String(firstUser.userSubscribersAmount)
        userSubscriptionAmountLabel.text = String(firstUser.userSubscriptionAmount)
        firstHighlightImage.image = firstUser.firstHighlightImage
        secondHighlightImage.image = firstUser.secondHighlightImage
        thirdHighlightImage.image = firstUser.thirdHighlightImage
        thirdUserPostImage.image = firstUser.thirdUserPostImage
        secondUserPostImage.image = firstUser.secondUserPostImage
        firstUserPostImage.image = firstUser.firstUserPostImage
    }
    
    func setSecondUserInfo() {
        usernameNavigationItem.title = secondUser.username
        userImage.image = secondUser.userImage
        userFullNameLabel.text = secondUser.userFullName
        userSpecialityLabel.text = secondUser.userSpeciality
        userDescriptionLabel.text = secondUser.userDescription
        userPublicationAmountLabel.text = String(secondUser.userPublicationAmount)
        userSubscribersAmountLabel.text = String(secondUser.userSubscribersAmount)
        userSubscriptionAmountLabel.text = String(secondUser.userSubscriptionAmount)
        firstHighlightImage.image = secondUser.firstHighlightImage
        secondHighlightImage.image = secondUser.secondHighlightImage
        thirdHighlightImage.image = secondUser.thirdHighlightImage
        thirdUserPostImage.image = secondUser.thirdUserPostImage
        secondUserPostImage.image = secondUser.secondUserPostImage
        firstUserPostImage.image = secondUser.firstUserPostImage
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
