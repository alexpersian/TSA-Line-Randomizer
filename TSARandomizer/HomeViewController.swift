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
    var direction: Direction.Pointing = .Up
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pressMeButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func random() -> Int {
        return Int(arc4random_uniform(2))
    }
    
    func setupSegue(dir: Direction.Pointing) {
        direction = dir
        performSegueWithIdentifier("directionViewControllerSegue", sender: self)
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let rand = random()
        
        switch rand {
        case Int(rand == lastRand):
            setupSegue(.Up)
        case 0:
            setupSegue(.Left)
        case 1:
            setupSegue(.Right)
        default:
            print("things have broken")
        }
        
        lastRand = rand
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destVC = segue.destinationViewController as! DirectionViewController
        destVC.direction = direction
    }
    
    @IBAction func returnToHomeViewController(segue: UIStoryboardSegue) {}
}

