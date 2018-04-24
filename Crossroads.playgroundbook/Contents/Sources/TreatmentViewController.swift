import UIKit

public class TreatmentViewController: BaseViewController {
    
    public var grandpa = UIImageView()
    public var peter = UIImageView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground(imgName: "Scenario Outside.png")
        insertOlders()
        insertPeter()
    }
    
    func insertOlders() {
        self.grandpa.image = UIImage(named: "Grandpas_Serious.png")
        self.background.addSubview(self.grandpa)
        
        self.grandpa.translatesAutoresizingMaskIntoConstraints = false
        self.grandpa.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -(self.view.frame.size.width * 0.09)).isActive = true
        self.grandpa.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30).isActive = true
    }
    
    func insertPeter() {
        self.peter.image = UIImage(named: "Peter_Interaction_Someone.png")
        self.background.addSubview(self.peter)
        
        self.peter.translatesAutoresizingMaskIntoConstraints = false
        self.peter.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.view.frame.size.width * 0.17)).isActive = true
        self.peter.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30).isActive = true
    }
}
