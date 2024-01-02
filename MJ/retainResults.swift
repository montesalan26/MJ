//
//  retainResults.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit

class retainResults: UIViewController {
    
    var netflix = Double()
    var bolNetGal = Double()
    var compartmentGal = Double()
    var totalProd = Double()
    var mathcal = Double()
    var gallons = Double()
    
    

    @IBOutlet weak var grossLblDelivered: UILabel!
    @IBOutlet weak var neyLblDelivered: UILabel!
    @IBOutlet weak var grossLblRetain: UILabel!
    @IBOutlet weak var netLblRetain: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculateRetain()
    }
    

    func calculateRetain(){
        
        let total = netflix + gallons
        let words = String(total)
        grossLblRetain.text = "\(words) hello"
        
        
        
        
    }

}
