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
   
    let firstUser: InstagramUser = InstagramUser(username: "gdan", userFullName: "Dan Gerasimov", userSpeciality: "Comedian", userDescription: "Cool guy", userPublicationAmount: 3, userSubscribersAmount: 500, userSubscriptionAmount: 2)
    let secondUser: InstagramUser = InstagramUser(username: "robertdowneyjr", userFullName: "Robert Downey Jr.", userSpeciality: "Actor", userDescription: "Iron man", userPublicationAmount: 3, userSubscribersAmount: 999, userSubscriptionAmount: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillAllImageViews()
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
    func fillAllImageViews() {
        guard let firstUserImage = UIImage(named: "userImage") else {
            print("Not found")
            return
        }
        guard let firstHighlightImage = UIImage(named: "firstUserFirstHighlightImage") else {
            print("Not found")
            return
        }
        guard let secondHighlightImage = UIImage(named: "firstUserSecondHighlightImage") else {
            print("Not found")
            return
        }
        guard let thirdHighlightImage = UIImage(named: "firstUserThirdHighlightImage") else {
            print("Not found")
            return
        }
        guard let thirdUserPostImage = UIImage(named: "firstUserPostImage") else {
            print("Not found")
            return
        }
        guard let secondUserPostImage = UIImage(named: "secondUserPostImage") else {
            print("Not found")
            return
        }
        guard let firstUserPostImage = UIImage(named: "firstUserPostImage") else {
            print("Not found")
            return
        }
        firstUser.userImage = firstUserImage
        firstUser.firstHighlightImage = firstHighlightImage
        firstUser.secondHighlightImage = secondHighlightImage
        firstUser.thirdHighlightImage = thirdHighlightImage
        firstUser.thirdUserPostImage = thirdUserPostImage
        firstUser.secondUserPostImage = secondUserPostImage
        firstUser.firstUserPostImage = firstUserPostImage
        guard let secondUserImage = UIImage(named: "secondUserImage") else {
            print("Not found")
            return
        }
        guard let secondUserFirstHighlightImage = UIImage(named: "secondUserFirstHighlightImage") else {
            print("Not found")
            return
        }
        guard let secondUserSecondHighlightImage = UIImage(named: "secondUserSecondHighlightImage") else {
            print("Not found")
            return
        }
        guard let secondUserThirdHighlightImage = UIImage(named: "secondUserThirdHighlightImage") else {
            print("Not found")
            return
        }
        guard let post1 = UIImage(named: "post1") else {
            print("Not found")
            return
        }
        guard let post2 = UIImage(named: "post2") else {
            print("Not found")
            return
        }
        guard let post3 = UIImage(named: "post3") else {
            print("Not found")
            return
        }
        secondUser.userImage = secondUserImage
        secondUser.firstHighlightImage = secondUserFirstHighlightImage
        secondUser.secondHighlightImage = secondUserSecondHighlightImage
        secondUser.thirdHighlightImage = secondUserThirdHighlightImage
        secondUser.thirdUserPostImage = post1
        secondUser.secondUserPostImage = post2
        secondUser.firstUserPostImage = post3
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
