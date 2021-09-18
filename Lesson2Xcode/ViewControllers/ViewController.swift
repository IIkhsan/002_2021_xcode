//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenButton: UIButton!
    @IBOutlet weak var instagramButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenButton.layer.cornerRadius = 5
        instagramButton.layer.cornerRadius = 5
    }

    @IBAction func instagramButtonAction(_ sender: UIButton) {
        guard let instagramViewController = self.storyboard?.instantiateViewController(withIdentifier: "InstagramViewController") as? InstagramViewController else {return}
        self.navigationController?.pushViewController(instagramViewController , animated: true)
    }
    
    @IBAction func screenButtonAction(_ sender: UIButton) {
        guard let componentsViewController = self.storyboard?.instantiateViewController(withIdentifier: "ComponentsViewController") as? ComponentsViewController else {return}
        self.navigationController?.pushViewController(componentsViewController , animated: true)
    }
}

