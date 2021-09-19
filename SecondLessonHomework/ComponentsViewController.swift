//
//  ComponentsViewController.swift
//  SecondLessonHomework
//
//  Created by Renat Murtazin on 18.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {
    @IBOutlet weak var componentsLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var stepperView: UIStepper!
    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var segmentedControlView: UISegmentedControl!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateAction(_ sender: Any) {
        update()
    }
    
    private func update() {
        textView.text = "Обновленный текст"
        imageView.image = UIImage(named: "PlayboiCarti")
        textField.text = "Введите текст"
        progressView.progress = 100
        switchView.isOn = false
        segmentedControlView.isEnabled = false
        updateButton.backgroundColor = .green
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
