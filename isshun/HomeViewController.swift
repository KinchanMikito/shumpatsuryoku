//
//  HomeViewController.swift
//  isshun
//
//  Created by 金森幹斗 on 2015/05/28.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    @IBOutlet var label3:UILabel!
    @IBOutlet var label4:UILabel!
    @IBOutlet var label5:UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        if no1 == 0{
            no1 = 1
        }
        if no2 == 0{
            no2 = 1
        }
        if no3 == 0{
            no3 = 1
        }
        if no4 == 0{
            no4 = 1
        }
        if no5 == 0{
            no5 = 1
        }
        
        label1.text = String(format: "1:%.3f",no1)
        label2.text = String(format: "2:%.3f",no2)
        label3.text = String(format: "3:%.3f",no3)
        label4.text = String(format: "4:%.3f",no4)
        label5.text = String(format: "5:%.3f",no5)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
