//
//  SecondScreenViewController.swift
//  Lesson2Xcode
//
//  Created by Эльмира Байгулова on 19.09.2021.
//

import UIKit

class SecondScreenViewController: UIViewController {

//    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var subscribersLabel: UILabel!
    @IBOutlet weak var subscriptionsLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var kindOfActivityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var howToGetButton: UIButton!
    @IBOutlet weak var toWriteButton: UIButton!
    
    
    @IBOutlet weak var firstHighlightsImage: UIImageView!
    @IBOutlet weak var firstHighlightName: UILabel!
    @IBOutlet weak var secondHighlightsImage: UIImageView!
    @IBOutlet weak var secondHighlightName: UILabel!
    @IBOutlet weak var thirdHighlightsImage: UIImageView!
    @IBOutlet weak var thirdHighlightName: UILabel!
    
    
    @IBOutlet weak var firstPost: UIImageView!
    @IBOutlet weak var secondPost: UIImageView!
    @IBOutlet weak var thirdPost: UIImageView!
    
    let profileNames = ["voguegram", "bstlovesyou"]
    
    let profileImages = ["profileImage1", "profileImage2","profileImage3"]
    
    let names = ["love", "aesthetic"]
    
    let kindsOfActivity = ["Сообщество", "Природа", ""]
    
    let descriptions = ["A mood", "🥰", "love."]
    
    let highlightImages = ["highlight1", "highlight2", "highlight3"]
    let highlightNames = ["people", "cats", "love", "world", "sky"]
    
    let postImages = ["post1", "post2", "post3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func toWriteButton(_ sender: UIButton){
        update()
    }
    
    func makeBordersGray(element: UIView) {
            element.layer.borderWidth = 1
            element.layer.borderColor = UIColor.systemGray4.cgColor
    }
        
    func makeImageViewRound(image: UIImageView) {
            image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
    }
    
    func update(){
        title = profileNames.randomElement()
        profileImage.image = profileImages.compactMap({UIImage(named: $0) }).randomElement()
        subscribersLabel.text = String(Int.random(in: 0...100000))
        subscriptionsLabel.text = String(Int.random(in: 0...10000))
        nameLabel.text = names.randomElement()
        kindOfActivityLabel.text = kindsOfActivity.randomElement()
        descriptionLabel.text = descriptions.randomElement()
        firstHighlightsImage.image = highlightImages.compactMap({UIImage(named: $0) }).randomElement()
        firstHighlightName.text = highlightNames.randomElement()
        secondHighlightsImage.image = highlightImages.compactMap({UIImage(named: $0) }).randomElement()
        secondHighlightName.text = highlightNames.randomElement()
        thirdHighlightsImage.image = highlightImages.compactMap({UIImage(named: $0) }).randomElement()
        thirdHighlightName.text = highlightNames.randomElement()
        firstPost.image = postImages.compactMap({UIImage(named: $0) }).randomElement()
        secondPost.image = postImages.compactMap({UIImage(named: $0) }).randomElement()
        thirdPost.image = postImages.compactMap({UIImage(named: $0) }).randomElement()
        makeBordersGray(element: toWriteButton)
        makeBordersGray(element: howToGetButton)
        makeBordersGray(element: callButton)
        makeImageViewRound(image: profileImage)
        makeImageViewRound(image: firstHighlightsImage)
        makeImageViewRound(image: secondHighlightsImage)
        makeImageViewRound(image: thirdHighlightsImage)


        
    }
}
