import UIKit

class ComponentsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var switchUI: UISwitch!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    
    var pickerViewComponents: [String] = []
    var progessBarValue: Float = 0.0
    var sliderValue: Float = 0.0
    var switchIsOn = false
    var segmentedControlIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
        
        progressBar.setProgress(0.0, animated: true)
        slider.setValue(0.0, animated: true)
        switchUI.isOn = switchIsOn
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewComponents[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewComponents.count
    }
    
     @IBAction func stepper(_ sender: UIStepper) {
        stepperLabel.text = String(sender.value)
    }
    
    @IBAction func changeLabelButtonAction(_ sender: Any) {
        label.text = "Changed!"
        label.textColor = UIColor.red
    }
    
    @IBAction func changePickerViewButtonAction(_ sender: Any) {
        pickerViewComponents.append("Added")
        pickerView.reloadAllComponents()
    }
    
    @IBAction func changeProgressBarButtonAction(_ sender: Any) {
        progessBarValue += 0.1
        progressBar.progress = progessBarValue
    }
    
    @IBAction func changeSliderButton(_ sender: Any) {
        sliderValue += 0.1
        slider.setValue(sliderValue, animated: true)
    }
    
    @IBAction func changeSwitchButtonAction(_ sender: Any) {
        if switchIsOn {
            switchIsOn = false
        } else {
            switchIsOn = true
        }
        
        switchUI.setOn(switchIsOn, animated: true)
    }
    
    @IBAction func changeSegmentedControlAction(_ sender: Any) {
        if segmentedControlIndex == 0 {
            segmentedControlIndex = 1
        } else {
            segmentedControlIndex = 0
        }
        
        segmentedControl.selectedSegmentIndex = segmentedControlIndex
    }
    
    @IBAction func changeButtonButtonAction(_ sender: Any) {
        button.setTitle("Changed", for: .normal)
    }
    
}
