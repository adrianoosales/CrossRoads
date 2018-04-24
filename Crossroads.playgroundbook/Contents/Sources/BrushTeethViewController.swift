import UIKit

public class BrushTeethViewController: BaseViewController {
    
    public var teeth = UIImageView()
    public var brushImg = UIImageView()
    public var bubbles = UIImageView()
    public var numberOfBrushes = 0
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = #colorLiteral(red: 0.6705882353, green: 0.9019607843, blue: 1, alpha: 1)
        addTeeth()
    }
    
    func addTeeth() {
        let img = UIImage(named: "Teeth_Normal.png")
        self.teeth = UIImageView(image: img)
        self.teeth.center = self.view.center

        self.view.addSubview(self.teeth)
        
        self.teeth.translatesAutoresizingMaskIntoConstraints = false
        self.teeth.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.teeth.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.teeth.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
    }
    
    public func addBrush() {
        let img = UIImage(named: "Teeth Brush.png")
        self.brushImg = UIImageView(image: img)
        self.brushImg.center = self.view.center
        
        self.view.addSubview(self.brushImg)
        
        self.brushImg.translatesAutoresizingMaskIntoConstraints = false
        brushImg.bottomAnchor.constraint(equalTo: self.teeth.topAnchor, constant: 10).isActive = true
        brushImg.centerXAnchor.constraint(equalTo: self.teeth.rightAnchor).isActive = true
        brushImg.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        
        addBubbles()
    }
    
    func addBubbles() {
        let img = UIImage(named: "Bubbles.png")
        self.bubbles = UIImageView(image: img)
        self.bubbles.center = self.brushImg.center
        self.bubbles.alpha = 0
        
        self.brushImg.addSubview(self.bubbles)
        
        self.bubbles.translatesAutoresizingMaskIntoConstraints = false
        self.bubbles.bottomAnchor.constraint(equalTo: self.brushImg.bottomAnchor, constant: 20).isActive = true
        self.bubbles.leftAnchor.constraint(equalTo: self.brushImg.leftAnchor).isActive = true
        self.bubbles.widthAnchor.constraint(equalToConstant: (self.bubbles.bounds.size.width * 0.75)).isActive = true
        self.bubbles.heightAnchor.constraint(equalTo: self.brushImg.heightAnchor, multiplier: 0.85).isActive = true
    }
}
