import UIKit
import PlaygroundSupport

var vc = ViewController1()
let navigationVC = UINavigationController(rootViewController: vc)
PlaygroundPage.current.liveView = navigationVC
