import UIKit

public var rainingId:Int = 0

public func isRaining() -> Bool {
    if rainingId > 0 {
        return false
    }
    
    rainingId += 1
    return true
}

public func playOutside() {
    addSickPeter()
}

public func waitTheRainingStops() {
    addHappyPeter()
}

public func addSickPeter() {
    rainingVC.background.image = UIImage(named: "Scenario_Inside_Raining.png")
    rainingVC.feedback(message: "Oh no!\nPeter played outside in the raining and now he is sick.\n\nNow he has fever and has to stay at home.😔")
    
    let img = UIImage(named: "Peter_Sick.png")
    let sickPeter = UIImageView(image: img)
    rainingVC.view.addSubview(sickPeter)
    
    sickPeter.translatesAutoresizingMaskIntoConstraints = false
    sickPeter.centerXAnchor.constraint(equalTo: rainingVC.view.centerXAnchor).isActive = true
    sickPeter.bottomAnchor.constraint(equalTo: rainingVC.background.bottomAnchor, constant: -30).isActive = true

    UIView.animate(withDuration: 0.05, delay: 0.5, options: [.repeat, .autoreverse], animations: {
        sickPeter.transform = sickPeter.transform.translatedBy(x: 1, y: 0)
    })
}

public func addHappyPeter() {
    rainingVC.background.image = UIImage(named: "Scenario_Inside_Sun.png")
    rainingVC.feedback(message: "Well done Peter!\nNow the rain stoped and you can go outside and play.😃")
    
    let img = UIImage(named: "Peter_Happy_Arms_Up.png")
    let peter = UIImageView(image: img)
    rainingVC.view.addSubview(peter)
    
    peter.translatesAutoresizingMaskIntoConstraints = false
    peter.centerXAnchor.constraint(equalTo: rainingVC.view.centerXAnchor).isActive = true
    peter.bottomAnchor.constraint(equalTo: rainingVC.background.bottomAnchor, constant: -30).isActive = true
}
