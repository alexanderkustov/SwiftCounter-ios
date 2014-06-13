//
//  ViewController.swift
//  CounterSemApp
//
//  Created by Inspiring on 13/06/14.
//  Copyright (c) 2014 inspiring.pt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelCounter.text = String(counter)
        
    }

    @IBOutlet var labelCounter : UILabel
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func startCounterPressed(sender : AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("update"), userInfo:nil, repeats: true)
    }
   
    @IBAction func clearPressed(sender : AnyObject) {
         timer.invalidate()
        counter = 0
        labelCounter.text = String(counter)
    }
    @IBAction func stopCounterpressed(sender : AnyObject) {
        timer.invalidate()
    }
    func update(){
        labelCounter.text = String(counter++)
    }
}

