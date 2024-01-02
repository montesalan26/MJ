//
//  retainCalculator.swift
//  MJ
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit



class retainCalculator: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var bolGross: UITextField!
    @IBOutlet weak var bolNet: UITextField!
    @IBOutlet weak var compartment: UITextField!
    @IBOutlet weak var totalGallons: UITextField!
    @IBOutlet weak var grossDel: UILabel!
    @IBOutlet weak var grossRet: UILabel!
    @IBOutlet weak var DelLbl: UILabel!
    @IBOutlet weak var retLbl: UILabel!
    @IBOutlet weak var calcButtn: UIButton!
    

    

    

    @IBAction func but(_ sender: Any) {
        


        let gallonsGross = Float(bolGross.text!)!
        let gallonsNet = Float(bolNet.text!)!
        let compartmentTotal = Float(compartment.text!)!
        let totalProduct = Float(totalGallons.text!)!
        
        let decimNum = gallonsNet / gallonsGross
        let calcCompartmentNet = decimNum * compartmentTotal
        let delTotal = totalProduct - compartmentTotal
        let netDelTotal = delTotal * decimNum
        
        grossDel.text = "Gross: \(Int(delTotal)) Net: \(Int(netDelTotal))"
        grossRet.text = "Gross: \(Int(compartmentTotal)) Net:\(Int(calcCompartmentNet))"
        
        grossDel.isHidden = false
        grossRet.isHidden = false
        DelLbl.isHidden = false
        retLbl.isHidden = false
        
        
        
        bolGross.resignFirstResponder()
        totalGallons.resignFirstResponder()
        bolNet.resignFirstResponder()
        compartment.resignFirstResponder()
        
        
        
    



    
    

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        grossDel.isHidden = true
        grossRet.isHidden = true
        DelLbl.isHidden = true
        retLbl.isHidden = true
        
        totalGallons?.delegate = self
        calcButtn?.isUserInteractionEnabled = false
        calcButtn?.alpha = 0.5
        calcButtn.layer.cornerRadius = calcButtn.bounds.size.height / 2.0
        
        
        
        
        
        


        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return bolGross.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        let text = (totalGallons.text! as NSString).replacingCharacters(in: range, with: string)
        
        
        if !text.isEmpty{
            calcButtn.isUserInteractionEnabled = true
            calcButtn.alpha = 1.0
        }else{
            calcButtn.isUserInteractionEnabled = false
            calcButtn.alpha = 1.0
        }
        return true
        
    }
    

    }


    


