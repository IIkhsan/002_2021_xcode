//
//  InstagramUIViewController.swift
//  InstagramUIViewController
//
//  Created by Ильдар Арсламбеков on 19.09.2021.
//

import UIKit

class InstagramUIViewController: UIViewController {
    
    private var images: [UIImage] = [#imageLiteral(resourceName: "cezer"), #imageLiteral(resourceName: "pie"), #imageLiteral(resourceName: "sushi"), #imageLiteral(resourceName: "beer"), #imageLiteral(resourceName: "pizza"), #imageLiteral(resourceName: "kompot"), #imageLiteral(resourceName: "beshbarmak")]

            
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var postsCountLabel: UILabel!
    @IBOutlet weak var followersCountLabel: UILabel!
    @IBOutlet weak var subscribeCountLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var subscribeButton: UIButton!
    @IBOutlet weak var howToGetThereButton: UIButton!
    @IBOutlet weak var writeMessageButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    
    @IBOutlet weak var firstSavedImageView: UIImageView!
    @IBOutlet weak var secondSavedImageView: UIImageView!
    @IBOutlet weak var thirdSavedImageView: UIImageView!
    
    @IBOutlet weak var firstPublicationImageView: UIImageView!
    @IBOutlet weak var secondPublicationImageView: UIImageView!
    @IBOutlet weak var thirdPublicationImageView: UIImageView!
    
    @IBOutlet weak var fakeTapBarControllerView: UIView!
    @IBOutlet weak var postsView: UIView!
    
    @IBAction func writeMessageButtonPressed(_ sender: Any) {
        performChanges()
    }
    
    override func viewDidLoad() {
        editElements()
        // Do any additional setup after loading the view.
    }
    
    private func performChanges() {
        images.shuffle()
        avatarImageView.image = images[0]
        firstSavedImageView.image = images[1]
        secondSavedImageView.image = images[2]
        thirdSavedImageView.image = images[3]
        firstPublicationImageView.image = images[4]
        secondPublicationImageView.image = images[5]
        thirdPublicationImageView.image = images[6]
        
        subscribeCountLabel.text = Int.random(in: 0..<100).description
        followersCountLabel.text = Int.random(in: 0..<100).description
        
    }
    
    private func editElements() {
        makeBordersGray(element: postsView)
        makeBordersGray(element: fakeTapBarControllerView)
        makeBordersGray(element: subscribeButton)
        makeBordersGray(element: writeMessageButton)
        makeBordersGray(element: howToGetThereButton)
        makeBordersGray(element: callButton)
        
        makeImageViewRound(image: avatarImageView)
        makeImageViewRound(image: firstSavedImageView)
        makeImageViewRound(image: secondSavedImageView)
        makeImageViewRound(image: thirdSavedImageView)
        
        makeBordersGray(element: avatarImageView)
        makeBordersGray(element: firstSavedImageView)
        makeBordersGray(element: secondSavedImageView)
        makeBordersGray(element: thirdSavedImageView)
        
        subscribeButton.layer.cornerRadius = 5
        writeMessageButton.layer.cornerRadius = 5
        howToGetThereButton.layer.cornerRadius = 5
        callButton.layer.cornerRadius = 5
    }
    
    private func makeBordersGray(element: UIView) {
        element.layer.borderWidth = 1
        element.layer.borderColor = UIColor.systemGray4.cgColor
    }
    
    private func makeImageViewRound(image: UIImageView) {
        image.layer.cornerRadius = image.frame.size.width / 2
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
