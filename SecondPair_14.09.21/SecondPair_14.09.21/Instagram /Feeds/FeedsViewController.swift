//
//  FeedsViewController.swift
//  SecondPair_14.09.21
//
//  Created by Тимур Миргалиев on 20.09.2021.
//

import UIKit

class FeedsViewController: UIViewController {
    
    var arrayOfImage = [UIImage]()
    
    let arrayOfNickName = ["TimFich", "ITIS_!", "ASDQWE", "maliklarii", "Nestor"]
    
    let arrayOfHistoryName = ["News","Today","Memories","Popular","Actual","Yestarday"]
    
    //MARK: BUTTONS NO ACTION
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    //MARK: LABELS
    
    @IBOutlet weak var firstNumber: UILabel!
    
    @IBOutlet weak var secondNumber: UILabel!
    
    @IBOutlet weak var thirdNumber: UILabel!
    
    @IBOutlet weak var firstHistoryLabel: UILabel!
    
    @IBOutlet weak var secondHistoryLabel: UILabel!
    
    @IBOutlet weak var thirdHistoryLabel: UILabel!
    
    //MARK: IMAGES
    
    @IBOutlet weak var firstHistory: UIImageView!
    
    @IBOutlet weak var secondHistory: UIImageView!
    
    @IBOutlet weak var thirdHistory: UIImageView!
    
    @IBOutlet weak var firstPost: UIImageView!
    
    @IBOutlet weak var secondPost: UIImageView!
    
    @IBOutlet weak var thirdPost: UIImageView!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func reloadButoon(_ sender: Any) {
        viewDidLoad()
    }
    
    override func viewDidLoad() {
        firstButton.layer.cornerRadius = 10
        secondButton.layer.cornerRadius = 10
        thirdButton.layer.cornerRadius = 10
        addImage()
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self,  action: #selector(SomthingViewController.back(sender:)))
        newBackButton.tintColor = UIColor.systemBlue
        self.navigationItem.leftBarButtonItem = newBackButton
        scrollView.contentSize = CGSize(width: 320, height: 1200)
        firstNumber.text = "3"
        secondNumber.text = "\(Int.random(in: 1...999))"
        thirdNumber.text = "\(Int.random(in: 1...999))"
        self.navigationItem.title = arrayOfNickName.randomElement()
        history(historyView: firstHistory)
        history(historyView: secondHistory)
        history(historyView: thirdHistory)
        post(postView: firstPost)
        post(postView: secondPost)
        post(postView: thirdPost)
        history(historyView: avatarImage)
        firstHistoryLabel.text = arrayOfHistoryName.randomElement()
        secondHistoryLabel.text = arrayOfHistoryName.randomElement()
        thirdHistoryLabel.text = arrayOfHistoryName.randomElement()
    }
    
    func history(historyView: UIImageView) {
        historyView.image = arrayOfImage.randomElement()
        historyView.layer.cornerRadius = firstHistory.frame.size.width / 3
        historyView.contentMode = .scaleAspectFill
        historyView.layer.borderWidth = 3.0
        historyView.layer.borderColor = UIColor.black.cgColor
        historyView.layer.masksToBounds = true
    }
    
    func addImage() {
        for i in 1...9  {
            arrayOfImage.append(UIImage(named: "\(i)") ?? UIImage.init())
        }
    }
    
    func post(postView: UIImageView) {
        postView.image = arrayOfImage.randomElement()
        postView.contentMode = .scaleAspectFill
        postView.layer.borderWidth = 1.5
        postView.layer.borderColor = UIColor.black.cgColor
        postView.layer.masksToBounds = true
    }
    
    @objc func back(sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
    }
    
    
}
