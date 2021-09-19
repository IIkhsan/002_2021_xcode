//
//  InstagramViewController.swift
//  SecondLessonHomework
//
//  Created by Renat Murtazin on 18.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var publicationsLabel: UILabel!
    @IBOutlet weak var subscribersLabel: UILabel!
    @IBOutlet weak var subscriprionsLabel: UILabel!
    @IBOutlet weak var publicationsCountLabel: UILabel!
    @IBOutlet weak var subscribersCountLabel: UILabel!
    @IBOutlet weak var subscriptionsCountLabel: UILabel!
    @IBOutlet weak var descriptionsTextView: UITextView!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var howToGetButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var leftStoryImageView: UIImageView!
    @IBOutlet weak var centerStoryImageView: UIImageView!
    @IBOutlet weak var rightStoryImageView: UIImageView!
    @IBOutlet weak var leftPublicationImageView: UIImageView!
    @IBOutlet weak var centerPublicationImageView: UIImageView!
    @IBOutlet weak var rightPublicationImageView: UIImageView!
    @IBOutlet weak var leftStoryLabel: UILabel!
    @IBOutlet weak var centerStoryLabel: UILabel!
    @IBOutlet weak var rightStoryLabel: UILabel!
    
    let publicationImages: [UIImage?] = [UIImage(named: "Carti1"), UIImage(named: "Carti2"), UIImage(named: "Carti3")]
    let accountDiscriptions: [String] = ["IOS developer", "Android developer", "Full-stack developer"]
    let storyImages: [UIImage?] = [UIImage(named: "Spring"), UIImage(named: "Summer"), UIImage(named: "Autumn"), UIImage(named: "Winter")]
    let leftStoryLabels: [String] = ["Совсем", "Очень", "Вообще"]
    let centerStoryLabels: [String] = ["Люблю", "Обожаю", "Ненавижу"]
    let rightStoryLabels: [String] = ["Природу", "Сидеть дома", "Видео"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 500, height: 1000)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func messageAction(_ sender: Any) {
        updateData()
    }
    
    private func updateData() {
        profileImageView.image = publicationImages.randomElement()!
        subscribersCountLabel.text = String(Int.random(in: 500...1000))
        subscriptionsCountLabel.text = String(Int.random(in: 10...100))
        descriptionsTextView.text = accountDiscriptions.randomElement()
        leftStoryImageView.image = storyImages.randomElement()!
        centerStoryImageView.image = storyImages.randomElement()!
        rightStoryImageView.image = storyImages.randomElement()!
        leftStoryLabel.text = leftStoryLabels.randomElement()
        centerStoryLabel.text = centerStoryLabels.randomElement()
        rightStoryLabel.text = rightStoryLabels.randomElement()
        leftPublicationImageView.image = publicationImages.randomElement()!
        centerPublicationImageView.image = publicationImages.randomElement()!
        rightPublicationImageView.image = publicationImages.randomElement()!
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
