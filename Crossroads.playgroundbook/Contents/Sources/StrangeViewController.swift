import UIKit

public class StrangeViewController: BaseViewController {
    
    public var strange = UIImageView()
    public var peter = UIImageView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground(imgName: "Scenario Outside.png")
        insertStrange()
        insertPeter()
    }
    
    public func insertStrange() {
        strange.image = UIImage(named: "Strange.png")
        self.view.addSubview(strange)
        
        strange.translatesAutoresizingMaskIntoConstraints = false
        strange.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -(self.view.frame.size.width * 0.15)).isActive = true
        strange.bottomAnchor.constraint(equalTo: self.background.bottomAnchor, constant: -30).isActive = true
    }
    
    public func insertPeter() {
        peter.image = UIImage(named: "Peter_Interaction_Someone.png")
        self.view.addSubview(peter)
        
        peter.translatesAutoresizingMaskIntoConstraints = false
        peter.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.view.frame.size.width * 0.15)).isActive = true
        peter.bottomAnchor.constraint(equalTo: self.background.bottomAnchor, constant: -30).isActive = true
    }
}
