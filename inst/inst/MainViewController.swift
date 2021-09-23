//
//  MainViewController.swift
//  inst
//
//  Created by itisioslab on 21.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func components(_ sender: Any) {
        guard let componentsViewController = storyboard?.instantiateViewController(identifier: "ComponentsViewController") as? ComponentsViewController else { return }
        present(componentsViewController, animated: true)
    }
    
    
    @IBAction func profile(_ sender: Any) {
        guard let profileViewController = storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }
        present(profileViewController, animated: true)
    }
}
