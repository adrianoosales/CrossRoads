import PlaygroundSupport
import UIKit

public var treatmentVC = TreatmentViewController()

public func setup() {
    PlaygroundPage.current.liveView = treatmentVC
    
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["You have to use the `if` and put some function inside.", "Then if some action is true, the function and everything inside the if will be executed."], solution: "```swift\nif isOlderThanYou {\n    treatWellAndRespect()\n}\n```")
}
