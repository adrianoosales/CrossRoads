import UIKit

public var isOlderThanYou = true

public func ignoreAndDoNotRespect() {
    treatmentVC.grandpa.image = UIImage(named: "Grandpas_Sad.png")
    treatmentVC.peter.image = UIImage(named: "Peter_Interaction_Someone_Serious.png")
    
    treatmentVC.feedback(message: "Oh, no! Mr. and Mrs. Wilson are really sad now.\n\nWhat if we try again and treat them\nin a respecful and nice way? 😉")
}

public func treatWellAndRespect() {
    treatmentVC.grandpa.image = UIImage(named: "Grandpas_Happy.png")
    treatmentVC.peter.image = UIImage(named: "Peter_Interaction_Someone_Smiling.png")
    
    treatmentVC.feedback(message: "Awesome!\nMr. and Mrs. Wilson love the respectful way Peter\ntalk to them. 😍")
}
