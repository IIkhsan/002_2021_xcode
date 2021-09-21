//
//  ViewController3.swift
//  Lesson2Xcode
//
//  Created by Милана Махсотова on 19.09.2021.
//

import UIKit

class InstagramPageController:  UIViewController {

    let publications = ["publ1.jpeg", "publ2.jpeg", "publ3.jpeg", "image1.png", "image2.png", "image3.png"]
    
    let descriptions = ["blogger", "actress", "student", "billionaire"]
    
    let nicknames = ["limana.88", "alexandramitroshina", "durov"]

    @IBOutlet weak var fourthHighlights: UIImageView!
    @IBOutlet weak var thirdHighlights: UIImageView!
    
    @IBOutlet weak var secondHighlights: UIImageView!
    @IBOutlet weak var firstHighlights: UIImageView!
    
    @IBOutlet weak var thirdPublication: UIImageView!
    @IBOutlet weak var secondPublication: UIImageView!
    @IBOutlet weak var firstPublication: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var descriptionProfile: UITextView!

    @IBOutlet weak var directButton: UIButton!

    
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var pathButton: UIButton!
    
    
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var numberPublications: UITextView!
    @IBOutlet weak var numberSubscriptions: UITextView!

    @IBOutlet weak var numberFollowers: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Do any additional setup after loading the view.
    }

    private func config() {
        nickName.font = nickName.font.withSize(25)

        numberPublications.font = UIFont.systemFont(ofSize: 11)
        numberFollowers.font = UIFont.systemFont(ofSize: 11)
        numberSubscriptions.font = UIFont.systemFont(ofSize: 11)
        
        pathButton.titleLabel? .font = UIFont.systemFont(ofSize: 10)
        numberPublications.text = " 3 \nПубликаций"

        callButton.tintColor = UIColor.black
        pathButton.tintColor = UIColor.black
        directButton.tintColor = UIColor.black

        callButton.setTitle("Позвонить", for: .normal)
        pathButton.setTitle("Как добраться", for: .normal)
        directButton.setTitle("Написать", for: .normal)
        
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 1500)

        
        
        fillRandomValues()
    }
    
    @IBAction func update(_ sender: Any) {
        fillRandomValues()
    }
    
    private func fillRandomValues() {
        
        nickName.text = nicknames.randomElement()
        
        profilePhoto.maskCircle(anyImage: UIImage(named: publications.randomElement()!)!)
        
        numberFollowers.text = "\(Int.random(in: 0...1000)) \nПодписчиков"
        numberSubscriptions.text = "\(Int.random(in: 0...1000)) \nПодписок"
        
        descriptionProfile.text = descriptions.randomElement()
        
        firstHighlights.maskCircle(anyImage: UIImage(named: publications.randomElement()!)!)
        secondHighlights.maskCircle(anyImage: UIImage(named: publications.randomElement()!)!)
        thirdHighlights.maskCircle(anyImage: UIImage(named: publications.randomElement()!)!)
        fourthHighlights.maskCircle(anyImage: UIImage(named: publications.randomElement()!)!)
        
        
        firstPublication.image = UIImage(named: publications.randomElement()!)
        secondPublication.image = UIImage(named: publications.randomElement()!)
        thirdPublication.image = UIImage(named: publications.randomElement()!)
        
    }
}

extension UIImageView {
  public func maskCircle(anyImage: UIImage) {
    self.contentMode = UIView.ContentMode.scaleAspectFill
    self.layer.cornerRadius = self.frame.height / 2
    self.layer.masksToBounds = false
    self.clipsToBounds = true

   // make square(* must to make circle),
   // resize(reduce the kilobyte) and
   // fix rotation.
   self.image = anyImage
  }
}
