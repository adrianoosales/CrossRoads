import UIKit

public var isUnknown = true

public func dontTalk() {
    // Move strange to outside the screen
    UIView.animate(withDuration: 1.0, delay: 0.5, options: [], animations: {
        vc.strange.transform = vc.strange.transform.translatedBy(x: -vc.view.frame.size.width, y: 0)
        vc.peter.image = UIImage(named: "Peter_Interaction_Someone_Smiling.png")
        vc.feedback(message: "Great choice!\nPeter is safe because he doesn't talk to\nunknown people.🙃")
        
    }) { (completion) in
        vc.strange.removeFromSuperview()
    }
}

public func talk() {
    UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
        vc.strange.transform = vc.strange.transform.translatedBy(x: (vc.view.frame.size.width * 0.05), y: 0)
        
        vc.peter.image = UIImage(named: "Peter_Interaction_Someone_Serious.png")
        vc.peter.transform = vc.peter.transform.translatedBy(x: -(vc.view.frame.size.width * 0.05), y: 0)
        
        vc.feedback(message: "Oh, oh! This is dangerous!\n\nWe don't know what can happen because we\ndon't know the person Peter is talking to.🙁")
    })
}
