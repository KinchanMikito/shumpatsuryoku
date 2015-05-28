//
//  ViewController.swift
//  isshun
//
//  Created by 金森幹斗 on 2015/05/09.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

let ud = NSUserDefaults.standardUserDefaults()

var no1:Double = ud.doubleForKey("zero")
var no2:Double = ud.doubleForKey("one")
var no3:Double = ud.doubleForKey("two")
var no4:Double = ud.doubleForKey("three")
var no5:Double = ud.doubleForKey("four")


class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    
    var timer:NSTimer!
    
    var timer2:NSTimer!
    
    var count:Double = 0.0
    
    @IBOutlet var button:UIButton!
    
    @IBOutlet var oneMore:UIButton!
    
    @IBOutlet var timeLab:UILabel!
    
    var appeared:Bool = false
    
    var highscores:[Double] = [no1,no2,no3,no4,no5]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            
            ranking(count)
            
        }
        
        oneMore.hidden = false
        
        
        
    }

    @IBAction func tapMokkai(){
        
        start()
        
        count = 0
        
    }
    
    func ranking(score:Double){
        
        for var i = 0; i < 5; i++ {
            
            if highscores[i] > score{
                
                for var j = 4; j > i; j-- {
                    
                    highscores[j] = highscores[j - 1]
                    
                }
                
                highscores[i] = score
                
                no1 = highscores[0]
                no2 = highscores[1]
                no3 = highscores[2]
                no4 = highscores[3]
                no5 = highscores[4]
                
                ud.setDouble(no1, forKey: "zero")
                ud.setDouble(no2, forKey: "one")
                ud.setDouble(no3, forKey: "two")
                ud.setDouble(no4, forKey: "three")
                ud.setDouble(no5, forKey: "four")
                
                break
                
            }
            
        }
        
    }
}

