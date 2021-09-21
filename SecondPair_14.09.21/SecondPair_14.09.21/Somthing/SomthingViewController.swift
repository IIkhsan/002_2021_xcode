//
//  SomthingViewController.swift
//  SecondPair_14.09.21
//
//  Created by Тимур Миргалиев on 16.09.2021.
//

import UIKit

class SomthingViewController: UIViewController {
    
    var count: Int = 0
    var countForWatcherFirst: Int = 0
    var countForWatcherSecond: Int = 0
    
    @IBOutlet weak var complexityOfPassword: UIProgressView!
    
    @IBOutlet var mainView: UIView!
    
    
    
    // MARK: TEXTFIELDS
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var secondPasswordTextField: UITextField!
    
    // MARK: BUTTONS WITH ACTION
    
    @IBAction func signInButton(_ sender: Any) {
        if passwordTextField.text == secondPasswordTextField.text {
            complexityOfPassword.progress = 1
            complexityOfPassword.tintColor = UIColor.green
        } else {
            complexityOfPassword.progress = 0.1
            complexityOfPassword.tintColor = UIColor.red
        }
    }
    
    @IBAction func darkThemeSwitcher(_ sender: Any) {
        if count % 2 == 0 {
            mainView.backgroundColor = UIColor.black
            count += 1
        } else {
            mainView.backgroundColor = UIColor.white
            count += 1
        }
    }
    
    @IBAction func watcherPasswordFirstButton(_ sender: Any) {
        if countForWatcherFirst % 2 == 0 {
            passwordTextField.isSecureTextEntry = false
            countForWatcherFirst += 1
        } else {
            passwordTextField.isSecureTextEntry = true
            countForWatcherFirst += 1
        }
    }
    
    @IBAction func watcherPasswordSecondButton(_ sender: Any) {
        if countForWatcherSecond % 2 == 0 {
            secondPasswordTextField.isSecureTextEntry = false
            countForWatcherSecond += 1
        } else {
            secondPasswordTextField.isSecureTextEntry = true
            countForWatcherSecond += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self,  action: #selector(SomthingViewController.back(sender:)))
        newBackButton.tintColor = UIColor.orange
        self.navigationItem.leftBarButtonItem = newBackButton
    }
    
    @objc func back(sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
    }
    
}
