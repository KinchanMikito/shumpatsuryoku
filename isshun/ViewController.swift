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
    
    var timer2:NSTimer!
    
    var count:Double = 0.0
    
    @IBOutlet var button:UIButton!
    
    @IBOutlet var oneMore:UIButton!
    
    @IBOutlet var timeLab:UILabel!
    
    var appeared:Bool = false
    
    
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
        
        appeared = true
        
        //button.hidden = false
        
        
    }
    func b(){
        
        count += 0.001
        
    }
    func start(){
        
        //button.hidden = true
        
        //count = 0
        
        oneMore.hidden = true
        
        label.text = nil
        
        var a:Int = Int(arc4random_uniform(4))
        a += 3
        
        timer2 = NSTimer.scheduledTimerWithTimeInterval(Double(a), target: self, selector: Selector("a"), userInfo: nil, repeats: false)
        
        timeLab.text = nil
        
        appeared = false
        
    }
    
    @IBAction func Tap(){
        
        if appeared == false{
            
            timer2.invalidate()
            
            timeLab.text = "failed..."
            
            label.text = "😭"
            
        }else{
            
            timer.invalidate()
            
            timeLab.text = String(format: "%.3f", Float(count))
            
        }
        
        oneMore.hidden = false
        
    }

    @IBAction func tapMokkai(){
        
        start()
        
        count = 0
        
    }
}

