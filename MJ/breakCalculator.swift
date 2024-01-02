//
//  breakCalculator.swift
//  MJ
//
//  Created by Alan Montes on 11/21/23.
//

import UIKit

class breakCalculator: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var clockInHrs: UITextField!
    @IBOutlet weak var clockInMin: UITextField!
    @IBOutlet weak var calcButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clockInMin?.delegate = self
        calcButton?.isUserInteractionEnabled = false
        calcButton?.alpha = 0.5
        calcButton?.layer.cornerRadius = calcButton.bounds.size.height / 2
        

    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    
}
    
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "breakLunchResults") as! breakLunchResults
        
        vc.hour = Int(clockInHrs.text!) ?? 0

        
        vc.minutes = Int(clockInMin.text!) ?? 0

        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        clockInHrs.resignFirstResponder()
        clockInMin.resignFirstResponder()
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        let text = (clockInMin.text! as NSString).replacingCharacters(in: range, with: string)
        
        
        if !text.isEmpty{
            calcButton.isUserInteractionEnabled = true
            calcButton.alpha = 1.0
        }else{
            calcButton.isUserInteractionEnabled = false
            calcButton.alpha = 1.0
        }
        return true
        
    }
    
    
    
    

}


