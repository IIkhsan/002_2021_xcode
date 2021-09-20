//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var componentsButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    
    @IBAction func componentsButtonAction(_ sender: Any) {
        guard let componentsVC = storyboard?.instantiateViewController(withIdentifier: "ComponentsViewController") else { return }
        navigationController?.pushViewController(componentsVC, animated: true)
    }
    
    @IBAction func profileButtonAction(_ sender: Any) {
        guard let profileVC = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") else { return }
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backButtonTitle = ""
    }


}

