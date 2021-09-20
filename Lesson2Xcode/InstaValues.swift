//
//  InstaValues.swift
//  Lesson2Xcode
//
//  Created by Marat Giniyatov on 20.09.2021.
//

import Foundation
import UIKit

struct Profile {
    let avatar: UIImage?
    let publicationsCount: Int
    let subscribersCount: Int
    let subscriptionCount: Int
    let username: String
    let description: String
    let stories: [Story]
    let publications: [UIImage?]
}
struct Story {
    let image: UIImage?
    let text: String
}

var kroshStories = [Story(image: UIImage(named: "krosh1"), text: "Футбик⚽️" ) ,
                    Story(image: UIImage(named: "krosh2"), text: "Круть!") ,
                    Story(image: UIImage(named: "krosh3"), text: "Это тебе!")]
let kroshPublications = [UIImage(named: "krosh4"), UIImage(named: "krosh5"), UIImage(named: "krosh6")]
let ezhStories = [Story(image: UIImage(named: "ezh1"), text: "Садовод🌵"), Story(image: UIImage(named: "ezh2"), text: "🤖"), Story(image: UIImage(named: "krosh2"), text: "Крош!")]
let ezhPublications = [UIImage(named: "ezh3"), UIImage(named: "ezh4"), UIImage(named: "ezh5")]
let losyashStories = [Story(image: UIImage(named: "ezh6"), text: "Ежик!"), Story(image: UIImage(named: "Losyash1"), text: "🤤"), Story(image: UIImage(named: "Losyash2"), text: "aaaa!")]
let losyashPublications = [UIImage(named: "losyash3"), UIImage(named: "losyash4"), UIImage(named: "losyash5")]
var profiles = [Profile(avatar: UIImage(named: "KroshAvatar"), publicationsCount: 3, subscribersCount: 120000, subscriptionCount: 9, username: "Крош🐰", description: "жизнерадостный, подвижный, никогда не унывающий кролик бирюзового окраса с длинными ушами и раскосыми глазами.", stories: kroshStories, publications: kroshPublications),
                Profile(avatar: UIImage(named: "EzhAvatar"), publicationsCount: 3, subscribersCount: 100000, subscriptionCount: 11, username: "Ёжик🦔", description: "застенчивый ёж мужского пола, живущий в стране смешариков. Любит коллекционировать кактусы и фантики, ещё он любит яблоки.", stories: ezhStories, publications: ezhPublications),
                Profile(avatar: UIImage(named: "LosyahAvatar"), publicationsCount: 3, subscribersCount: 200000, subscriptionCount: 21, username: "Лосяш🦌", description: "интеллигентный лось-учёный, один из главных героев мультсериала «Смешарики». Интересуется многими науками: химией, астрономией, биологией, физикой и так далее", stories: losyashStories, publications: losyashPublications)]
