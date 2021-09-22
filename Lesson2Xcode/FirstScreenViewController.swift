//
//  FirstScreenViewController.swift
//  Lesson2Xcode
//
//  Created by Эльмира Байгулова on 19.09.2021.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    
    let labels = ["Oleg", "Maria", "Alex", "Liya", "Sonya", "Mark", "Zukhra"]
    
    let imageViews = [
        "Image1",
        "Image2",
        "Image3"
    
    ]
    
    let textViews = [
        "Приятная внешность, всегда дружелюбный и озорной взгляд.", "Не очень высокого роста со статной, подтянутой фигурой. ", "Лицо продолговатое и смуглое, а глаза карие с золотистыми лучиками. "
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func updateButton(_ sender: UIButton) {
        update()
    }
    
    func getRandomColor() -> UIColor {
         //Generate between 0 to 1
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    func update() {
        label.text = labels.randomElement()
        imageView.image = imageViews.compactMap({UIImage(named: $0) }).randomElement()
        segmentControl.backgroundColor = getRandomColor()
        `switch`.isOn.toggle()
        stepper.backgroundColor = getRandomColor()
        textView.text = textViews.randomElement()
        progressView.backgroundColor = getRandomColor()
        slider.backgroundColor = getRandomColor()
    }
    
    



}
