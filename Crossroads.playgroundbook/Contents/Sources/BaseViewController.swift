import UIKit

public class BaseViewController: UIViewController {
    
    public var background = UIImageView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func setupBackground(imgName: String) {
        let img = UIImage(named: imgName)
        self.background.image = img
        self.background.bounds = self.view.bounds
        self.background.center = self.view.center
        
        self.view.addSubview(self.background)
    }
    
    public func feedback(message: String) {
        let img = UIImage(named: "feedback.png")
        let feedbackContainer = UIImageView(image: img)
        feedbackContainer.clipsToBounds = true
        
        self.view.addSubview(feedbackContainer)
        
        feedbackContainer.translatesAutoresizingMaskIntoConstraints = false
        feedbackContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70).isActive = true
        feedbackContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let feedbackMessage = UILabel()
        feedbackMessage.numberOfLines = 0
        feedbackMessage.textAlignment = .center
        feedbackMessage.text = message
        
        feedbackContainer.addSubview(feedbackMessage)
        feedbackMessage.translatesAutoresizingMaskIntoConstraints = false
        feedbackMessage.centerXAnchor.constraint(equalTo: feedbackContainer.centerXAnchor).isActive = true
        feedbackMessage.centerYAnchor.constraint(equalTo: feedbackContainer.centerYAnchor).isActive = true
    }
}
