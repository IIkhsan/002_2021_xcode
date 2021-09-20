//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func instaProfileAction(_ sender: Any) {
        guard let instaProfileController = storyboard?.instantiateViewController(withIdentifier: "InstaProfileViewController") as? InstaProfileViewController else { return }
        
        navigationController?.pushViewController(instaProfileController, animated: true)
    }
    
    
    @IBAction func componentsAction(_ sender: Any) {
        guard let componentsController = storyboard?.instantiateViewController(withIdentifier: "ComponentsViewController") as? ComponentsViewController else { return }
        present(componentsController, animated: true, completion: nil)
    }
    
    
    
    
    
}

