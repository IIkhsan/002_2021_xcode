//
//  ProfileViewController.swift
//  Lesson2Xcode
//
//  Created by Илья on 21.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profile_picture: UIImageView!
    @IBOutlet weak var story1: UIImageView!
    @IBOutlet weak var story2: UIImageView!
    @IBOutlet weak var story3: UIImageView!
    @IBAction func textfield_switch(_ sender: Any) {
    }
    
    @IBAction func message_button(_ sender: Any) {
        profile_picture.image = UIImage(named:"photo1")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        profile_picture.layer.cornerRadius = profile_picture.frame.width / 2
        story1.layer.cornerRadius = story1.frame.width / 2
        story2.layer.cornerRadius = story2.frame.width / 2
        story3.layer.cornerRadius = story3.frame.width / 2
        
        // Do any additional setup after loading the view.
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
