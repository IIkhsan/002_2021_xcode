import UIKit

class FirstScreenViewController: UIViewController {
    
    @IBOutlet weak var testSegmentedControl: UISegmentedControl!
    @IBOutlet weak var testImageView: UIImageView!
    @IBOutlet weak var testActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var testProgressView: UIProgressView!
    @IBOutlet weak var testSwitch: UISwitch!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testSlider: UISlider!
    @IBOutlet weak var testPickerView: UIPickerView!
    @IBOutlet weak var testStepper: UIStepper!
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testPickerView.dataSource = self
        testPickerView.delegate = self
        testPickerView.selectRow(3, inComponent: 0, animated: true)
    }
    
    @IBAction func testButtonPressed(_ sender: UIButton) {
        testSegmentedControl.selectedSegmentIndex = 1
        testImageView.image = nil
        testActivityIndicatorView.startAnimating()
        testProgressView.progress = 100
        testSwitch.setOn(false, animated: true)
        testLabel.text = "Вот так"
        testSlider.setValue(90, animated: true)
        testPickerView.selectRow(1, inComponent: 0, animated: true)
        testStepper.backgroundColor = .red
    }
}

extension UIViewController: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
}

extension UIViewController: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let cities: [String] = ["Tokio", "Berlin", "Moscow", "Rio", "Denver"]
        return cities[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
}
