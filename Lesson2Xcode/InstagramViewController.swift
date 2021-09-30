//
//  InstagramViewController.swift
//  Lesson2Xcode
//
//  Created by Tagir Kabirov on 21.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {

    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var history1Img: UIImageView!
    @IBOutlet weak var history2Img: UIImageView!
    @IBOutlet weak var history3Img: UIImageView!
    @IBOutlet weak var post1: UIImageView!
    @IBOutlet weak var post2: UIImageView!
    @IBOutlet weak var post3: UIImageView!
    @IBOutlet weak var numberOfSubscribers: UILabel!
    @IBOutlet weak var numberOfSubscriptions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerRadiusImgs(images: [avatarImg, history1Img, history2Img, history3Img])
    }

    func cornerRadiusImgs(images: [UIImageView]) {
        for image in images {
            image.layer.cornerRadius = image.frame.width / 2
        }
    }
    
    @IBAction func pageChange(_ sender: Any) {
        changeInf()
    }
    
    @IBAction func pageChangeByCall(_ sender: Any) {
       changeInf()
    }
    
    func changeInf() {
        numberOfSubscribers.text = String(Int.random(in: 2...200))
        numberOfSubscriptions.text = String(Int.random(in: 2...20))
        
        changeImgs()
    }
    
    func changeImgs() {
        let images = [UIImage(named: "avatar 1"), UIImage(named: "avatar2"), UIImage(named: "img 1"), UIImage(named: "img 2"), UIImage(named: "img 3"), UIImage(named: "img 4"), UIImage(named: "img 5"), UIImage(named: "img 6"), UIImage(named: "history 1"), UIImage(named: "history 2"), UIImage(named: "history 3"), UIImage(named: "history 4"), UIImage(named: "history 5"), UIImage(named: "history 6")]
        
        let imagesContainers = [avatarImg, history1Img, history2Img, history3Img, post1, post2, post3]
        
        for container in imagesContainers {
            container?.image = images[Int.random(in: 0..<images.count)]
    }
    
    }
}
