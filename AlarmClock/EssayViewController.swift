//
//  EssayViewController.swift
//  AlarmClock
//
//  Created by Not Tanu on 7/24/20.
//  Copyright © 2020 Ipsita. All rights reserved.
//

import UIKit

class EssayViewController: UIViewController {
    var timer = Timer()
    var seconds = 60
    var minutes = 49
    
    @IBOutlet weak var minuteLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector( Action), userInfo: nil, repeats: true)
    }
    
    @objc func Action(){
         
         seconds -= 1
        if(seconds == 0){
            minutes -= 1
            seconds = 60
        }
        minuteLabel.text = String(minutes)
        secondLabel.text = String(seconds)
         
         if(seconds == 0 && minutes == 0){
             timer.invalidate()
         }
         
     }
         
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        seconds = 60
        minutes = 49
        minuteLabel.text = "50"
        secondLabel.text = "00"
        
    }

}
