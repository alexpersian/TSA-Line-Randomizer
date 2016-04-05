//
//  LeftViewController.swift
//  TSARandomizer
//
//  Created by Alex Persian on 4/5/16.
//  Copyright © 2016 alexpersian. All rights reserved.
//

import Foundation
import UIKit

class LeftViewController: UIViewController {
    
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    func startTimer() {
        print("LEFT: timer starting")
        timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(LeftViewController.transitionBack), userInfo: nil, repeats: false)
    }
    
    func transitionBack() {
        print("LEFT: going back")
        timer.invalidate()
        performSegueWithIdentifier("returnToHomeSegue", sender: self)
    }
}
