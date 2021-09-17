//
//  RootViewController.swift
//  Lesson2Xcode
//
//  Created by Руслан on 17.09.2021.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func gotToFirstScreenAction(_ sender: UIButton) {
        guard let componentsViewController = storyboard?.instantiateViewController(identifier: "ComponentsViewController") as? ComponentsViewController else { return }
        present(componentsViewController, animated: true, completion: nil)
    }
    
    @IBAction func gotToSecondScreenAction(_ sender: UIButton) {
        guard let instagramViewController = storyboard?.instantiateViewController(identifier: "InstagramViewController") as? InstagramViewController else { return }
        navigationController?.pushViewController(instagramViewController, animated: true)
    }
    
}
