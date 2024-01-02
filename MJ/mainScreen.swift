//
//  mainScreen.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 12/14/23.
//

import UIKit

class mainScreen: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passwrod: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func enter(_ sender: UIButton) {

        }
        
        
        
    }

