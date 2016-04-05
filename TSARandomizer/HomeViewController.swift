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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pressMeButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let rand = Int(arc4random_uniform(2))
        switch rand {
        case 0: performSegueWithIdentifier("leftViewControllerSegue", sender: self)
        case 1: performSegueWithIdentifier("rightViewControllerSegue", sender: self)
        default: print("The world has broken")
        }
    }
    
    @IBAction func returnToHomeViewController(segue: UIStoryboardSegue) {}
}

