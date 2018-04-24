import UIKit

public func peekPeter() {
    sleepingVC.background.image = UIImage(named: "Scenario_Sleeping.png")
    sleepingVC.background.bounds = sleepingVC.view.bounds
    sleepingVC.background.center = sleepingVC.view.center
    
    sleepingVC.view.addSubview(sleepingVC.background)
}
