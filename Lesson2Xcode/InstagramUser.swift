//
//  InstagramUser.swift
//  Lesson2Xcode
//
//  Created by Danil Gerasimov on 18.09.2021.
//

import Foundation
import UIKit

class InstagramUser {
    let username: String
    let userImage: UIImage
    let userFullName: String
    let userSpeciality: String
    let userDescription: String
    let userPublicationAmount: Int
    let userSubscribersAmount: Int
    let userSubscriptionAmount: Int
    let firstHighlightImage: UIImage
    let secondHighlightImage: UIImage
    let thirdHighlightImage: UIImage
    let thirdUserPostImage: UIImage
    let secondUserPostImage: UIImage
    let firstUserPostImage: UIImage
    init(username: String, userImage: UIImage, userFullName: String, userSpeciality: String, userDescription: String, userPublicationAmount: Int, userSubscribersAmount: Int, userSubscriptionAmount: Int, firstHighlightImage: UIImage, secondHighlightImage: UIImage, thirdHighlightImage: UIImage, thirdUserPostImage: UIImage, secondUserPostImage: UIImage, firstUserPostImage: UIImage) {
        self.username = username
        self.userImage = userImage
        self.userFullName = userFullName
        self.userSpeciality = userSpeciality
        self.userDescription = userDescription
        self.userPublicationAmount = userPublicationAmount
        self.userSubscribersAmount = userSubscribersAmount
        self.userSubscriptionAmount = userSubscriptionAmount
        self.firstHighlightImage = firstHighlightImage
        self.secondHighlightImage = secondHighlightImage
        self.thirdHighlightImage = thirdHighlightImage
        self.thirdUserPostImage = thirdUserPostImage
        self.secondUserPostImage = secondUserPostImage
        self.firstUserPostImage = firstUserPostImage
    }
}
