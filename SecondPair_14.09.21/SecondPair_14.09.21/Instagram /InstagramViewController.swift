//
//  InstagramViewController.swift
//  SecondPair_14.09.21
//
//  Created by Тимур Миргалиев on 19.09.2021.
//

import UIKit

class InstagramViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(InstagramViewController.back(sender:)))
        self.navigationItem.leftBarButtonItem = newBackButton
    }
    
    @objc func back(sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
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

