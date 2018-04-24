import PlaygroundSupport
import UIKit

public var sleepingVC = ScenarioSleepingViewController()

public func setup() {
    PlaygroundPage.current.liveView = sleepingVC
    
    PlaygroundPage.current.assessmentStatus = PlaygroundPage.AssessmentStatus.fail(hints: ["Oops! We have to write a function to peek Peter while he is sleeping. Try to write the function `peekPeter()` and tap `Run My Code` to see Peter sleeping.🤫"], solution: "```swift\npeekPeter()\n```")
}
