//
//  truckCompartments.swift
//  MJ
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit

class truckCompartments: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var calBttn: UIButton!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number?.delegate = self
        calBttn?.isUserInteractionEnabled = false
        calBttn?.alpha = 0.5
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return number.resignFirstResponder()

    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)

}
    
    @IBAction func buttonEnter(_ sender: UIButton) {
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "truckCompartmentResults") as! truckCompartmentResults
        
        vc.semiTrailer = number.text!
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        number.resignFirstResponder()
        
        
            
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        let text = (number.text! as NSString).replacingCharacters(in: range, with: string)
        
        
        if !text.isEmpty{
            calBttn.isUserInteractionEnabled = true
            calBttn.alpha = 1.0
        }else{
            calBttn.isUserInteractionEnabled = false
            calBttn.alpha = 1.0
        }
        return true
        
    }

}

        
