//
//  ViewController.swift
//  isshun
//
//  Created by 金森幹斗 on 2015/05/09.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    
    var timer:NSTimer!
    
    var count:Double = 0.0
    
    @IBOutlet var button:UIButton!
    
    @IBOutlet var oneMore:UIButton!
    
    @IBOutlet var timeLab:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func a(){
        
        label.text = "😆"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.001, target: self, selector: Selector("b"), userInfo: nil, repeats: true)
        
        button.hidden = false
        
        
    }
    func b(){
        
        count += 0.001
        
    }
    func start(){
        
        button.hidden = true
        
        oneMore.hidden = true
        
        label.text = nil
        
        var count:Int = Int(arc4random_uniform(4))
        count += 3
        
        NSTimer.scheduledTimerWithTimeInterval(Double(count), target: self, selector: Selector("a"), userInfo: nil, repeats: false)
        
        timeLab.text = nil
        
    }
    
    @IBAction func Tap(){
        
        timer.invalidate()
        
        timeLab.text = String(format: "%.3  f", Float(count))
        
        oneMore.hidden = false
        
    }

    @IBAction func tapMokkai(){
        
        start()
        
    }
}

