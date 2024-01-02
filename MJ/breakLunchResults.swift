//
//  breakLunchResults.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit

class breakLunchResults: UIViewController {
    
    @IBOutlet weak var clockInTime: UILabel!
    @IBOutlet weak var firstBreak: UILabel!
    @IBOutlet weak var secondBreak: UILabel!
    @IBOutlet weak var thirdBreakLabel: UILabel!
    @IBOutlet weak var fourthBreakLbl: UILabel!
    @IBOutlet weak var firstLunchLabel: UILabel!
    
    @IBOutlet weak var secondLunchLbl: UILabel!
    
    
    var hour = 0
    var minutes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time()
        firstRest()
        secondRest()
        thirdRest()
        fourthRest()
        firstLunch()
        secondLunch()
        
        
    }
    
    func time(){
        
        if (minutes >= 0 && minutes <= 9){
            clockInTime.text = "\(hour):0\(minutes)"
        }else if (minutes >= 10 && minutes <= 59){
            clockInTime.text = "\(hour):\(minutes)"
        }else{
            clockInTime.text = "\(hour):00"
        }
    }
    
    func firstRest(){
        if (hour >= 1 && hour <= 8){
            if (minutes >= 1 && minutes <= 9){
                firstBreak.text = "\(hour):0\(minutes)-\(hour + 4):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                firstBreak.text = "\(hour):\(minutes)-\(hour + 4):\(minutes)"
            }else{
                firstBreak.text = "\(hour):00-\(hour + 4):00"
            }
            
        }else if(hour >= 9 && hour <= 12){
            if (minutes >= 1 && minutes <= 9){
                firstBreak.text = "\(hour):0\(minutes)-\(hour - 8):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                firstBreak.text = "\(hour):\(minutes)-\(hour - 8):\(minutes)"
            }else{
                firstBreak.text = "\(hour):00-\(hour - 8):00"
            }
        }
    }
    
    func secondRest(){
        if (hour >= 1 && hour <= 4){
            if (minutes >= 1 && minutes <= 9){
                secondBreak.text = "\(hour + 4):0\(minutes)-\(hour + 8):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                secondBreak.text = "\(hour + 4):\(minutes)-\(hour + 8):\(minutes)"
            }else{
                secondBreak.text = "\(hour + 4):00-\(hour + 8):00"
            }
            
        }else if(hour >= 5 && hour <= 8){
            if (minutes >= 1 && minutes <= 9){
                secondBreak.text = "\(hour + 4):0\(minutes)-\(hour - 4):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                secondBreak.text = "\(hour + 4):\(minutes)-\(hour - 4):\(minutes)"
            }else{
                secondBreak.text = "\(hour + 4):00-\(hour - 4):00"
            }
        }else{
            if (minutes >= 1 && minutes <= 9){
                secondBreak.text = "\(hour - 8):0\(minutes)-\(hour - 4):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                secondBreak.text = "\(hour - 8):\(minutes)-\(hour - 4):\(minutes)"
            }else{
                secondBreak.text = "\(hour - 8):00-\(hour - 4):00"
            }
        }
    }
    
    
    func thirdRest(){
        if (hour >= 1 && hour <= 4){
            if (minutes >= 1 && minutes <= 9){
                thirdBreakLabel.text = "\(hour + 8):0\(minutes)-\(hour):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                thirdBreakLabel.text = "\(hour + 8):\(minutes)-\(hour):\(minutes)"
            }else{
                thirdBreakLabel.text = "\(hour + 8):00-\(hour):00"
            }
            
        }else if(hour >= 5 && hour <= 12){
            if (minutes >= 1 && minutes <= 9){
                thirdBreakLabel.text = "\(hour - 4):0\(minutes)-\(hour):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                thirdBreakLabel.text = "\(hour - 4):\(minutes)-\(hour):\(minutes)"
            }else{
                thirdBreakLabel.text = "\(hour - 4):00-\(hour):00"
            }
        }
    }
    
    func fourthRest(){
        if (hour >= 1 && hour <= 8){
            if (minutes >= 1 && minutes <= 9){
                fourthBreakLbl.text = "\(hour):0\(minutes)-\(hour + 4):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                fourthBreakLbl.text = "\(hour):\(minutes)-\(hour + 4):\(minutes)"
            }else{
                fourthBreakLbl.text = "\(hour):00-\(hour + 4):00"
            }
            
        }else if(hour >= 9 && hour <= 12){
            if (minutes >= 1 && minutes <= 9){
                fourthBreakLbl.text = "\(hour):0\(minutes)-\(hour - 8):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 59){
                fourthBreakLbl.text = "\(hour):\(minutes)-\(hour - 8):\(minutes)"
            }else{
                fourthBreakLbl.text = "\(hour):00-\(hour - 8):00"
            }
            
        }
        
        
    }
    
    
    func firstLunch(){
        if (hour >= 1 && hour <= 6){
            if (minutes >= 1 && minutes <= 9){
                firstLunchLabel.text = "\(hour + 3):\(minutes + 30)-\(hour + 6):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 29){
                firstLunchLabel.text = "\(hour + 3):\(minutes + 30)-\(hour + 6):\(minutes)"
            }else if (minutes >= 30 && minutes <= 59){
                firstLunchLabel.text = "\(hour + 4):\(minutes - 30)-\(hour + 6):\(minutes)"
            }else if (minutes == 0){
                firstLunchLabel.text = "\(hour + 3):30-\(hour + 6):00"
            }
            
        }else if (hour >= 7 && hour <= 9){
            if (minutes >= 1 && minutes <= 9){
                firstLunchLabel.text = "\(hour + 3):\(minutes + 30)-\(hour - 6):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 29){
                firstLunchLabel.text = "\(hour + 3):\(minutes + 30)- \(hour - 6):\(minutes)"
            }else if (minutes >= 30 && minutes <= 59){
                firstLunchLabel.text = "\(hour + 3):0\(minutes - 30)-\(hour - 6):\(minutes)"
            }else if (minutes == 0){
                firstLunchLabel.text = "\(hour + 3):30-\(hour - 6):00"
            }
            
        }else if(hour >= 10 && hour <= 12){
            if (minutes >= 1 && minutes <= 9){
                firstLunchLabel.text = "\(hour - 9):\(minutes + 30)-\(hour - 6):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 29){
                firstLunchLabel.text = "\(hour - 9):\(minutes + 30)- \(hour - 6):\(minutes)"
            }else if (minutes >= 30 && minutes <= 59){
                firstLunchLabel.text = "\(hour - 9):0\(minutes - 30)-\(hour - 6):\(minutes)"
            }else if (minutes == 0){
                firstLunchLabel.text = "\(hour - 9):30-\(hour - 6):00"
            }
        }
    }
    
    func secondLunch(){
        if (hour <= 12 && hour >= 3){
            if (minutes == 0){
                secondLunchLbl.text = "\(hour - 2):30-\(hour + 1):00"
            }else if (minutes >= 1 && minutes <= 9){
                secondLunchLbl.text = "\(hour - 2):\(minutes + 30)-\(hour + 1):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 29){
                secondLunchLbl.text = "\(hour - 2):\(minutes + 30)-\(hour + 1):\(minutes)"
            }else if(minutes >= 40 && minutes <= 59){
                secondLunchLbl.text = "\(hour - 2):\(minutes - 30)-\(hour + 1):\(minutes)"
            }else if (minutes >= 30 && minutes <= 39){
                secondLunchLbl.text = "\(hour - 2):0\(minutes - 30)-\(hour + 1):\(minutes)"
            }
        }else if(hour == 1 || hour == 2){
            if (minutes == 0){
                secondLunchLbl.text = "\(hour + 10):30-\(hour + 1):00"
            }else if (minutes >= 1 && minutes <= 9){
                secondLunchLbl.text = "\(hour + 10):\(minutes + 30)-\(hour + 1):0\(minutes)"
            }else if (minutes >= 10 && minutes <= 29){
                secondLunchLbl.text = "\(hour + 10):\(minutes + 30)-\(hour + 1):\(minutes)"
            }else if(minutes >= 40 && minutes <= 59){
                secondLunchLbl.text = "\(hour + 10):\(minutes - 30)-\(hour + 1):\(minutes)"
            }else if (minutes >= 30 && minutes <= 39){
                secondLunchLbl.text = "\(hour + 10):0\(minutes - 30)-\(hour + 1):\(minutes)"
            }
        }
    }
    
    
}
