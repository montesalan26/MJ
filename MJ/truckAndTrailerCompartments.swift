//
//  truckAndTrailerCompartments.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 12/12/23.
//

import UIKit

class truckAndTrailerCompartments: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var truckNumber: UITextField!
    @IBOutlet weak var trailerNumber: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trailerNumber?.delegate = self
        button?.isUserInteractionEnabled = false
        button.alpha = 0.5
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func compartmentResults(_ sender: UIButton) {

        
        let vc = storyboard?.instantiateViewController(withIdentifier: "truckCompartmentResults") as! truckCompartmentResults
        
        vc.truckNumberr = truckNumber.text!
        
        
        vc.trailerNumberr = trailerNumber.text!
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        truckNumber.resignFirstResponder()
        trailerNumber.resignFirstResponder()
        
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        let text = (trailerNumber.text! as NSString).replacingCharacters(in: range, with: string)
        
        
        if !text.isEmpty{
            button.isUserInteractionEnabled = true
            button.alpha = 1.0
        }else{
            button.isUserInteractionEnabled = false
            button.alpha = 1.0
        }
        return true
        
    }
        
    
    
        
        
    }
    

