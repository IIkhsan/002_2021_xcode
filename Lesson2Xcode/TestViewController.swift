//
//  TestViewController.swift
//  Lesson2Xcode
//
//  Created by Tagir Kabirov on 20.09.2021.
//

import UIKit

class TestViewController: UITableViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.progress = 0
    }

    @IBAction func buttonChanges(_ sender: Any) {
        progressChange()
    }
    
    func progressChange() {
        var timer = Timer()

        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in

            self.progressView.progress += 0.01

            if self.progressView.progress == 1 {
                self.progressView.progress = 0
            }

        })
    }
}
