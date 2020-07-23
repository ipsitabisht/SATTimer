

import UIKit

class ViewController: UIViewController {


    
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var timer = Timer()
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         
    }

    /*@IBAction func startButton(_ sender: Any) {
        //Make sure there arent any other timers running
        timer.invalidate()
        //Create the timer
        timer = Timer.scheduledTimer(timeInterval:  1 , target: self ,
        
    }*/
    

    @IBAction func startTime(_ sender: UIButton) {
        timer.invalidate()
        if let newTime = textField.text{
            timerLabel.text = newTime
        }
        
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(ViewController.timeClass), userInfo: nil, repeats: true)
      
       
        
        
    }
    
    @objc func timeClass(){
        timerLabel.text =
    }
    
}
