import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstScreenButton: UIButton!
    @IBOutlet weak var secondScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToFirstScreen(_ sender: UIButton) {
        guard let firstScreenVC = storyboard?.instantiateViewController(withIdentifier: "FirstScreenViewController") else { return }
        navigationController?.pushViewController(firstScreenVC, animated: true)
    }
    
    @IBAction func goToSecondScreen(_ sender: UIButton) {
        guard let secondScreenVC = storyboard?.instantiateViewController(withIdentifier: "InstaViewController") else { return }
        navigationController?.pushViewController(secondScreenVC, animated: true)
    }
}
