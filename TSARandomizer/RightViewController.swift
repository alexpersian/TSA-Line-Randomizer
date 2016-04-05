//
//  RightViewController.swift
//  TSARandomizer
//
//  Created by Alex Persian on 4/5/16.
//  Copyright © 2016 alexpersian. All rights reserved.
//

import Foundation
import UIKit

class RightViewController: UIViewController {
    
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    func startTimer() {
        print("RIGHT: timer starting")
        timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(RightViewController.transitionBack), userInfo: nil, repeats: false)
    }
    
    func transitionBack() {
        print("RIGHT: going back")
        timer.invalidate()
        performSegueWithIdentifier("returnToHomeSegue", sender: self)
    }
}
