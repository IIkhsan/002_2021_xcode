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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func components(_ sender: Any) {
        guard let componentsViewController = storyboard?.instantiateViewController(identifier: "ComponentsViewController") as? ComponentsViewController else { return }
        navigationController?.pushViewController(componentsViewController, animated: true)
    }
    
    
    @IBAction func profile(_ sender: Any) {
        guard let profileViewController = storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }
        navigationController?.pushViewController(profileViewController, animated: true)
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
