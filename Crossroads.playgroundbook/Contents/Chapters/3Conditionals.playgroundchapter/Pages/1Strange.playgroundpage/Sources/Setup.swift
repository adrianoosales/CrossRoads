import PlaygroundSupport
import UIKit

public var vc = StrangeViewController()

public func setup() {
    PlaygroundPage.current.liveView = vc
    
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["You have to use the `if` and put some function inside.", "Then if some action is true, the function and everything inside the if will be executed."], solution: "```swift\nif isUnknown {\n    dontTalk()\n}\n```")
}
