//
//  ViewController.swift
//  TSARandomizer
//
//  Created by Alex Persian on 4/5/16.
//  Copyright © 2016 alexpersian. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var pressMeButton: UIButton!
    
    var lastRand: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pressMeButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func random() -> Int {
        return Int(arc4random_uniform(2))
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let rand = random()
        
        switch rand {
        case 0:
            if rand == lastRand {
                performSegueWithIdentifier("upViewControllerSegue", sender: self)
            } else {
                performSegueWithIdentifier("leftViewControllerSegue", sender: self)
            }
        case 1:
            if rand == lastRand {
                performSegueWithIdentifier("upViewControllerSegue", sender: self)
            } else {
                performSegueWithIdentifier("rightViewControllerSegue", sender: self)
            }
        default: print("The world has broken")
        }
        
        lastRand = rand
    }
    
    @IBAction func returnToHomeViewController(segue: UIStoryboardSegue) {}
}

