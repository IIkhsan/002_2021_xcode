//
//  InstagramProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Evans Owamoyo on 17.09.2021.
//

import UIKit

class InstagramProfileViewController: UIViewController {

    @IBOutlet weak var messageBtn: UIButton!
    @IBOutlet weak var reachBtn: UIButton!
    @IBOutlet weak var callBtn: UIButton!
    @IBOutlet weak var editProfileBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfileBtn.makeInstaButton()
        messageBtn.makeInstaButton()
        reachBtn.makeInstaButton()
        callBtn.makeInstaButton()
    }

}
