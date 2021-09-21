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
        // Do any additional setup after loading the view.
    }

    @IBAction func onUIComponentsButtonClick(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ComponentsViewController")
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func onInstagramButtonClick(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "InstagramViewController")
        self.present(nextViewController, animated:true, completion:nil)
    }
}

