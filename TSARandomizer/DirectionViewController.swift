//
//  LeftViewController.swift
//  TSARandomizer
//
//  Created by Alex Persian on 4/5/16.
//  Copyright © 2016 alexpersian. All rights reserved.
//

import Foundation
import UIKit

class DirectionViewController: UIViewController {
    
    @IBOutlet weak var directionArrow: UIImageView!
    @IBOutlet weak var directionText: UILabel!
    
    var timer: NSTimer!
    var direction: Direction.Pointing?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        setArrowDirection()
        setDirectionLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    func setArrowDirection() {
        guard let dir = direction else { return }
        
        switch dir {
        case .Up:
            directionArrow.image = directionArrow.image?.imageRotatedByDegrees(0, flip: false)
        case .Right:
            directionArrow.image = directionArrow.image?.imageRotatedByDegrees(90, flip: false)
        case .Left:
            directionArrow.image = directionArrow.image?.imageRotatedByDegrees(270, flip: false)
        default:
            print("things broke")
        }
        
    }
    
    func setDirectionLabel() {
        guard let dir = direction else { return }
        
        switch dir {
        case .Up:
            directionText.text = "Please step aside sir/ma'am."
        case .Right:
            directionText.text = "Move to the right into the security line."
        case .Left:
            directionText.text = "Move to the left into the security line."
        default:
            print("things broke")
        }
    }
    
    func startTimer() {
        print("timer starting")
        timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(DirectionViewController.transitionBack), userInfo: nil, repeats: false)
    }
    
    func transitionBack() {
        print("going home")
        timer.invalidate()
        performSegueWithIdentifier("returnToHomeSegue", sender: self)
    }
}
