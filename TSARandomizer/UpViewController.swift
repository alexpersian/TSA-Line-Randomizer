//
//  UpViewController.swift
//  TSARandomizer
//
//  Created by Alex Persian on 4/5/16.
//  Copyright © 2016 alexpersian. All rights reserved.
//

import Foundation
import UIKit

class UpViewController: UIViewController {
    
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    func startTimer() {
        print("UP: timer starting")
        timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(UpViewController.transitionBack), userInfo: nil, repeats: false)
    }
    
    func transitionBack() {
        print("UP: going back")
        timer.invalidate()
        performSegueWithIdentifier("returnToHomeSegue", sender: self)
    }
}
