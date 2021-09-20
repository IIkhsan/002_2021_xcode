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
    var userImage: UIImage? = nil
    let userFullName: String
    let userSpeciality: String
    let userDescription: String
    let userPublicationAmount: Int
    let userSubscribersAmount: Int
    let userSubscriptionAmount: Int
    var firstHighlightImage: UIImage? = nil
    var secondHighlightImage: UIImage? = nil
    var thirdHighlightImage: UIImage? = nil
    var thirdUserPostImage: UIImage? = nil
    var secondUserPostImage: UIImage? = nil
    var firstUserPostImage: UIImage? = nil
    init(username: String, userFullName: String, userSpeciality: String, userDescription: String, userPublicationAmount: Int, userSubscribersAmount: Int, userSubscriptionAmount: Int) {
        self.username = username
        self.userFullName = userFullName
        self.userSpeciality = userSpeciality
        self.userDescription = userDescription
        self.userPublicationAmount = userPublicationAmount
        self.userSubscribersAmount = userSubscribersAmount
        self.userSubscriptionAmount = userSubscriptionAmount
    }
}
