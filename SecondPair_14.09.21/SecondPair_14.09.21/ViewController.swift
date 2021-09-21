//
//  ViewController.swift
//  SecondPair_14.09.21
//
//  Created by Тимур Миргалиев on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func secondScreenButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Instagram", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "1234")
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(vc, animated: true, completion: nil)
        return
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

