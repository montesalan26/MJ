//
//  gasStations.swift
//  MJ
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit

class gasStations: UIViewController {
    
    @IBOutlet weak var stationName: UITextField!
    @IBOutlet weak var gasStation: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return stationName.resignFirstResponder()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func enter(_ sender: UIButton) {
        
        
        
        let stationNm = stationName.text
        gasStation.scalesLargeContentImage = true
        
        
        if (stationNm == "Valhigh" || stationNm == "valhigh"){
            gasStation.image = UIImage(named: "IMG_6979.jpg")
        }else if(stationNm == "MGM Oil" || stationNm == "mgm oil" || stationNm == "Mgm oil" || stationNm == "Mgm Oil"){
            gasStation.image = UIImage(named: "mgmOil.jpg")
        }else if(stationNm == "Win Win Fillin Station" || stationNm == "Win win fillin station" || stationNm == "win win fillin station" || stationNm == "Win Win fillin station"){
            gasStation.image = UIImage(named: "winWin.jpg")
        }else if(stationNm == "Vons Corona" || stationNm == "Vons corona" || stationNm == "vons corona" || stationNm == "Vons corona " || stationNm == "Vons Corona " || stationNm == "vons corona "){
            gasStation.image = UIImage(named: "vonsCorona.jpg")
        }else if(stationNm == "Robertson's Beaumont" || stationNm == "Robertson's Beaumont " || stationNm == "Robertsons Beaumont" || stationNm == "Robertsons Beaumont  " || stationNm == "Robertson's beaumont " || stationNm == "Robertson's beaumont" || stationNm == "robertsons beaumont" || stationNm == "robertsons beaumont " || stationNm == "robertson's Beaumont" || stationNm == "robertson's beaumont "){
            gasStation.image = UIImage(named: "robertsonsBeaumont.jpg")
        }
        
        stationName.resignFirstResponder()
        
        
        
    }
}
