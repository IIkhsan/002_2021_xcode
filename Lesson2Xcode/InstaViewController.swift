import UIKit

class InstaViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var subscribersLabel: UILabel!
    @IBOutlet weak var subscriptionsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var directionsButton: UIButton!
    @IBOutlet weak var messagesButton: UIButton!
    @IBOutlet weak var firstStoryImageView: UIImageView!
    @IBOutlet weak var firstStoryLabel: UILabel!
    @IBOutlet weak var secondStoryImageView: UIImageView!
    @IBOutlet weak var secondStoryLabel: UILabel!
    @IBOutlet weak var thirdStoryImageView: UIImageView!
    @IBOutlet weak var thirdStoryLabel: UILabel!
    @IBOutlet weak var firstPostImageView: UIImageView!
    @IBOutlet weak var secondPostImageView: UIImageView!
    @IBOutlet weak var thirdPostImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var imagesList = [UIImage(named: "ava"), UIImage(named: "pride"), UIImage(named: "sveta"), UIImage(named: "rasskaz"), UIImage(named: "utka"), UIImage(named: "komanda"), UIImage(named: "rustem")]
    var storiesList = ["Катрен", "Света", "Рассказ", "Шафин", "Гордость"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "/vigvamcev"
        scrollView.contentSize = CGSize(width: 320, height: 1000)
        randomise()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        randomise()
    }
    
    func randomise(){
        imageView.image = imagesList.randomElement() ?? UIImage()
        postsLabel.text = String(Int.random(in: 100...1000))
        subscribersLabel.text = String(Int.random(in: 100...1000))
        subscriptionsLabel.text = String(Int.random(in: 100...1000))
        descriptionLabel.text = storiesList.randomElement()
        firstStoryImageView.image = imagesList.randomElement() ?? UIImage()
        firstStoryLabel.text = storiesList.randomElement()
        secondStoryImageView.image = imagesList.randomElement() ?? UIImage()
        secondStoryLabel.text = storiesList.randomElement()
        thirdStoryImageView.image = imagesList.randomElement() ?? UIImage()
        thirdStoryLabel.text = storiesList.randomElement()
        firstPostImageView.image = imagesList.randomElement() ?? UIImage()
        secondPostImageView.image = imagesList.randomElement() ?? UIImage()
        thirdPostImageView.image = imagesList.randomElement() ?? UIImage()
    }
}
