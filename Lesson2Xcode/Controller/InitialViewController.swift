//
//  ViewController.swift
//  Lesson2Xcode
//
//  Created by i.ikhsanov on 14.09.2021.
//

import UIKit

class InitialViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var firstScreenButton: UIButton!
    @IBOutlet weak var instagramScreenButton: UIButton!
    
    //MARK: - View controller's cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Helpers
    func configure() {
        self.title = ""
        
        firstScreenButton.layer.borderWidth = 1
        firstScreenButton.layer.cornerRadius = 20
        firstScreenButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        firstScreenButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        instagramScreenButton.layer.borderWidth = 1
        instagramScreenButton.layer.cornerRadius = 20
        instagramScreenButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        instagramScreenButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
}

