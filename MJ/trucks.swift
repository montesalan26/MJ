//
//  trucks.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 11/30/23.
//

import UIKit

class trucks: UIViewController {
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enter(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "truckCompartmentResults") as! truckCompartmentResults
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    


}
