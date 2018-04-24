import PlaygroundSupport
import UIKit

public var brushTeethVC = BrushTeethViewController()

public func setup() {
    PlaygroundPage.current.liveView = brushTeethVC
    
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["You have to change the code of the `for` and choose the number of brushes you want Peter to do. 💦", "Then you should put a function (an action, remember?) inside the for to be executed that number of times."], solution: "```swift\nfor i in 1...5 {\n   brushTeeth()\n}\n```")
}
