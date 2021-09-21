//
//  ComponentsViewController.swift
//  inst
//
//  Created by itisioslab on 21.09.2021.
//

import UIKit

class ComponentsViewController: UIViewController {

    @IBOutlet weak var segmentedControllerOutlet: UISegmentedControl!
    
    @IBOutlet weak var horizontalStackViewOutlet: UIStackView!
    
    //@IBOutlet weak var verticalStackViewOutlet: UIStackView!
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBOutlet weak var horizontalSliderOutlet: UISlider!
    
    @IBOutlet weak var completitionLabelOutlet: UILabel!
    
    @IBOutlet weak var switchOutlet: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func reloadButtonAction(_ sender: Any) {
        completitionLabelOutlet.text = "Download complete!"
        switchOutlet.setOn(false, animated: true)
    }
}
