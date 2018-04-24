import PlaygroundSupport
import UIKit

public var rainingVC = RainingViewController()

public func setup() {
    PlaygroundPage.current.liveView = rainingVC
    
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["You have to use the while and put some function inside."], solution: "```swift\nwhile isRaining() {\n    waitTheRainingStops()\n}\n```")
}
