//
//  Users.swift
//  Lesson2Xcode
//
//  Created by Руслан on 17.09.2021.
//

import Foundation
import UIKit

struct User {
    
    let username: String
    let name: String
    let logo: UIImage?
    let description: String
    let followersCount: String
    let followingCount: Int
    let stories: [Story]
    let posts: [UIImage?]
}

struct Story {
    
    let image: UIImage?
    let name: String
    
    init(_ image: UIImage?, _ name: String) {
        self.image = image
        self.name = name
    }
}

let users: [User] = [User(username: "kyliejenner",
                          name: "Kylie 🤍",
                          logo: UIImage(named: "kylieLogo"),
                          description: "@kyliecosmetics @kylieskin @kylieswim",
                          followersCount: "286M",
                          followingCount: 76,
                          stories: [Story(UIImage(named: "kylieStories1"), "🏋️‍♀️"), Story(UIImage(named: "kylieStories2"), "✨"), Story(UIImage(named: "kylieStories3"), "24K")],
                          posts: [UIImage(named: "kylie1"), UIImage(named: "kylie2"), UIImage(named: "kylie3")]),
                     User(username: "apple",
                          name: "apple",
                          logo: UIImage(named: "appleLogo"),
                          description: "Everyone has a story to tell.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\n.\nA very long text to test UIScrollView.\n.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.\nTag #ShotoniPhone to take part.",
                          followersCount: "26.3M",
                          followingCount: 9,
                          stories: [Story(UIImage(named: "appleStories1"), "iPhone 13"), Story(UIImage(named: "appleStories2"), "Experiments"), Story(UIImage(named: "appleStories3"), "Tutorials")],
                          posts: [UIImage(named: "apple1"), UIImage(named: "apple2"), UIImage(named: "apple3")]),
                     User(username: "teslamotors",
                          name: "Tesla",
                          logo: UIImage(named: "teslaLogo"),
                          description: "electric cars, giant batteries and solar",
                          followersCount: "8.7M",
                          followingCount: 16,
                          stories: [Story(UIImage(named: "teslaStories1"), "iPhone 13"), Story(UIImage(named: "teslaStories2"), "Experiments"), Story(UIImage(named: "teslaStories3"), "Tutorials")],
                          posts: [UIImage(named: "tesla1"), UIImage(named: "tesla2"), UIImage(named: "apple3")])]
