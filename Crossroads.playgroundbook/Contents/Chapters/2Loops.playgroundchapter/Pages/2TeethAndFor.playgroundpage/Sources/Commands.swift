import UIKit

public func brushTeeth() {
    brushTeethVC.numberOfBrushes += 1
    
}

public func brush() {
    brush(forVC: brushTeethVC)
}

func brush(forVC vc: BrushTeethViewController) {
    vc.addBrush()
    moveBrush(vc: vc)
}

func moveBrush(vc: BrushTeethViewController) {
    
    UIView.animate(withDuration: 2.0, delay: 0, options:[], animations: {
        vc.bubbles.alpha = vc.bubbles.alpha == 0 ? 1 : 0
    })
    
    UIView.animate(withDuration: 1.0, delay: 0, options: [UIViewAnimationOptions.autoreverse], animations: {
        
        UIView.setAnimationRepeatCount(Float(brushTeethVC.numberOfBrushes))
        vc.brushImg.transform = CGAffineTransform(translationX: -(vc.teeth.frame.size.width / 2), y: 0)
        
    }) { (isCompleted) in
        vc.brushImg.transform = CGAffineTransform(translationX: (vc.teeth.frame.size.width / 2), y: 0)
        vc.brushImg.removeFromSuperview()
        
        let feedbackMessage: String
        if brushTeethVC.numberOfBrushes < 5 {
            vc.teeth.image = UIImage(named: "Teeth_Sad.png")
            feedbackMessage = "Oh no! You didn't brush Peter's teeth enough.\n\nWhat if you try again and brush more times now? 😉"
            
        } else {
            vc.teeth.image = UIImage(named: "Teeth_Bright.png")
            feedbackMessage = "Wow, great job! \nPeter's teeth look incredible. 😁"
        }
        
        // And set the animation
        let transition = CATransition()
        transition.duration = 1.0
        transition.type = kCATransitionFade
        
        vc.teeth.layer.add(transition, forKey: nil)
        vc.feedback(message: feedbackMessage)
    }
}
