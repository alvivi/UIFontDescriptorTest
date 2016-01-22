
import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var firstLabel: UILabel!
  @IBOutlet weak var secondLabel: UILabel!

  @IBAction func onStartTest(sender: AnyObject) {
    startMeasurement()
    let firstFont = UIFont(name: "Marker Felt", size: 16)
    firstLabel.font = firstFont
    finishMeasurement("UIFont(name)")
    
    startMeasurement()
    let secondFontDescriptor = UIFontDescriptor(name: "Marker Felt", size: 16)
    let secondFont = UIFont(descriptor: secondFontDescriptor, size: 16)
    secondLabel.font = secondFont
    finishMeasurement("UIFont(descriptor)")
  }
}

private var time: UInt64 = 0

public func startMeasurement() {
  time = mach_absolute_time()
}

public func finishMeasurement(name: String) {
  let duration = mach_absolute_time() - time
  print("* \(name) \(duration)ns")
}

