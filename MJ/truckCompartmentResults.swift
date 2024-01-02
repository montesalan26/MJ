//
//  truckCompartmentResults.swift
//  MJ Tank Lines
//
//  Created by Alan Montes on 11/27/23.
//

import UIKit

class truckCompartmentResults: UIViewController {
    @IBOutlet weak var truckNum: UILabel!
    @IBOutlet weak var copartmentOneGas: UILabel!
    @IBOutlet weak var compartmentTwoGas: UILabel!
    @IBOutlet weak var compartmentThreeGas: UILabel!
    @IBOutlet weak var compartmentFourGas: UILabel!
    @IBOutlet weak var gasTotal: UILabel!
    @IBOutlet weak var dieselCompOne: UILabel!
    @IBOutlet weak var dieselCompTwo: UILabel!
    @IBOutlet weak var dieselCompThree: UILabel!
    @IBOutlet weak var dieselTotal: UILabel!
    @IBOutlet weak var dieselCompFour: UILabel!
    @IBOutlet weak var trlNum: UILabel!
    
    var truckNumberr = ""
    var trailerNumberr = ""
    var semiTrailer = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        truck()
        trailer()
    
        
    }
    
    func truck(){
        
        truckNum.text = "TRK \(truckNumberr)"
        
        if truckNumberr == "60"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "52"{
            copartmentOneGas.text = "3900"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "22"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "28"{
            copartmentOneGas.text = "4100"
            dieselCompOne.text = "3600"
        }else if truckNumberr == "29"{
            copartmentOneGas.text = "4100"
            dieselCompOne.text = "3600"
        }else if truckNumberr == "44"{
            copartmentOneGas.text = "4100"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "49"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "51"{
            copartmentOneGas.text = "3900"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "59"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3600"
        }else if truckNumberr == "61"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "62"{
            copartmentOneGas.text = "4100"
            dieselCompOne.text = "3600"
        }else if truckNumberr == "63"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        }else if truckNumberr == "64"{
            copartmentOneGas.text = "4000"
            dieselCompOne.text = "3500"
        
        }
        
        
        
    }
    
    func trailer(){
        trlNum.isHidden = true
        
        if semiTrailer == "30A" || semiTrailer == "30a"{
            truckNum.text = "TRL 30A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1900"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2400"
            gasTotal.text = "8800"
            dieselTotal.text = "7700"
        }else if trailerNumberr == "24A" || trailerNumberr == "24a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 24A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1900"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "22A" || trailerNumberr == "22a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 22A"
            compartmentTwoGas.text = "1900"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1900"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1700"
        }else if semiTrailer == "5A" || semiTrailer == "5a"{
            truckNum.text = "TRL 5A"
            copartmentOneGas.text = "3300"
            compartmentTwoGas.text = "2150"
            compartmentThreeGas.text = "1150"
            compartmentFourGas.text = "2100"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "2100"
            dieselCompThree.text = "1050"
            dieselCompFour.text = "1750"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "07A" || semiTrailer == "07a" || semiTrailer == "7a" || semiTrailer == "7A"{
            truckNum.text = "TRL 07A"
            copartmentOneGas.text = "3300"
            compartmentTwoGas.text = "2400"
            compartmentThreeGas.text = "1100"
            compartmentFourGas.text = "1900"
            dieselCompOne.text = "2600"
            dieselCompTwo.text = "2400"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "1700"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "16A" || semiTrailer == "16a"{
            truckNum.text = "TRL 16A"
            copartmentOneGas.text = "3600"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1050"
            compartmentFourGas.text = "2250"
            dieselCompOne.text = "2900"
            dieselCompTwo.text = "1800"
            dieselCompThree.text = "900"
            dieselCompFour.text = "2000"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "17A" || semiTrailer == "17a"{
            truckNum.text = "TRL 17A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2500"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1100"
            dieselCompFour.text = "2400"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "18A" || semiTrailer == "18a"{
            truckNum.text = "TRL 18A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2600"
            dieselCompTwo.text = "1800"
            dieselCompThree.text = "1050"
            dieselCompFour.text = "2250"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "26A" || semiTrailer == "26a"{
            truckNum.text = "TRL 26A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1400"
            dieselCompThree.text = "1100"
            dieselCompFour.text = "2400"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "27A" || semiTrailer == "27a"{
            truckNum.text = "TRL 27A"
            copartmentOneGas.text = "2800"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1400"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2500"
            dieselCompTwo.text = "1500"
            dieselCompThree.text = "1100"
            dieselCompFour.text = "2500"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "39A" || semiTrailer == "39a"{
            truckNum.text = "TRL 39A"
            copartmentOneGas.text = "3200"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2600"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2400"
            gasTotal.text = "8800"
            dieselTotal.text = "7700"
        }else if semiTrailer == "43A" || semiTrailer == "43a"{
            truckNum.text = "TRL 43A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1700"
            compartmentThreeGas.text = "1250"
            compartmentFourGas.text = "2750"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2400"
            gasTotal.text = "8800"
            dieselTotal.text = "7700"
        }else if semiTrailer == "45A" || semiTrailer == "45a"{
            truckNum.text = "TRL 45A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2500"
            dieselCompTwo.text = "1500"
            dieselCompThree.text = "1100"
            dieselCompFour.text = "2500"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "47A" || semiTrailer == "47a"{
            truckNum.text = "TRL 47A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1700"
            compartmentThreeGas.text = "1100"
            compartmentFourGas.text = "2800"
            dieselCompOne.text = "2550"
            dieselCompTwo.text = "1500"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2550"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "48A" || semiTrailer == "48a"{
            truckNum.text = "TRL 48A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2600"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2400"
            gasTotal.text = "8800"
            dieselTotal.text = "7600"
        }else if semiTrailer == "50A" || semiTrailer == "50a"{
            truckNum.text = "TRL 50A"
            copartmentOneGas.text = "3000"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1200"
            compartmentFourGas.text = "2700"
            dieselCompOne.text = "2500"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2500"
            gasTotal.text = "8700"
            dieselTotal.text = "7600"
        }else if semiTrailer == "54A" || semiTrailer == "54a"{
            truckNum.text = "TRL 54A"
            copartmentOneGas.text = "3200"
            compartmentTwoGas.text = "2000"
            compartmentThreeGas.text = "950"
            compartmentFourGas.text = "2750"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "900"
            dieselCompFour.text = "2500"
            gasTotal.text = "8900"
            dieselTotal.text = "7800"
        }else if semiTrailer == "55A" || semiTrailer == "55a"{
            truckNum.text = "TRL 55A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1100"
            compartmentFourGas.text = "2800"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2500"
            gasTotal.text = "8800"
            dieselTotal.text = "7800"
        }else if semiTrailer == "519" || semiTrailer == "519 "{
            truckNum.text = "TRL 519"
            copartmentOneGas.text = "3700"
            compartmentTwoGas.text = "2000"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2000"
            dieselCompOne.text = "3300"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "1700"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "520" || semiTrailer == "520 "{
            truckNum.text = "TRL 520"
            copartmentOneGas.text = "3700"
            compartmentTwoGas.text = "2000"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2000"
            dieselCompOne.text = "3300"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "1700"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "521" || semiTrailer == "521 "{
            truckNum.text = "TRL 521"
            copartmentOneGas.text = "3600"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2200"
            dieselCompOne.text = "3100"
            dieselCompTwo.text = "1550"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1950"
            gasTotal.text = "8600"
            dieselTotal.text = "7500"
        }else if semiTrailer == "522" || semiTrailer == "522 "{
            truckNum.text = "TRL 522"
            copartmentOneGas.text = "3700"
            compartmentTwoGas.text = "2000"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2000"
            dieselCompOne.text = "3300"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "1700"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "523" || semiTrailer == "523 "{
            truckNum.text = "TRL 523"
            copartmentOneGas.text = "3600"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2200"
            dieselCompOne.text = "3100"
            dieselCompTwo.text = "1550"
            dieselCompThree.text = "900"
            dieselCompFour.text = "950"
            gasTotal.text = "8600"
            dieselTotal.text = "7500"
        }else if semiTrailer == "56A" || semiTrailer == "56a"{
            truckNum.text = "TRL 56A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1100"
            compartmentFourGas.text = "2800"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2500"
            gasTotal.text = "8800"
            dieselTotal.text = "7800"
        }else if semiTrailer == "57A" || semiTrailer == "57a"{
            truckNum.text = "TRL 57A"
            copartmentOneGas.text = "3100"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1100"
            compartmentFourGas.text = "2800"
            dieselCompOne.text = "2700"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "2500"
            gasTotal.text = "8800"
            dieselTotal.text = "7800"
        }else if semiTrailer == "58A" || semiTrailer == "58a"{
            truckNum.text = "TRL 58A"
            copartmentOneGas.text = "3700"
            compartmentTwoGas.text = "2000"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "2000"
            dieselCompOne.text = "3300"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "1000"
            dieselCompFour.text = "1700"
            gasTotal.text = "8700"
            dieselTotal.text = "7700"
        }else if semiTrailer == "59A" || semiTrailer == "59a"{
            truckNum.text = "TRL 59A"
            copartmentOneGas.text = "4100"
            compartmentTwoGas.text = "1100"
            compartmentThreeGas.text = "3600"
            compartmentFourGas.isHidden = true
            dieselCompOne.text = "3600"
            dieselCompTwo.text = "1000"
            dieselCompThree.text = "3100"
            dieselCompFour.isHidden = true
            gasTotal.text = "8800"
            dieselTotal.text = "7700"
        }else if trailerNumberr == "28A" || trailerNumberr == "28a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 28A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "29A" || trailerNumberr == "29a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 29A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "900"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "800"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "13A" || trailerNumberr == "13a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 13A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "49A" || trailerNumberr == "49a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 49A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "51A" || trailerNumberr == "51a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 51A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "52A" || trailerNumberr == "52a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 52A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1850"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "800"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "25A" || trailerNumberr == "25a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 25A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1900"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "34A" || trailerNumberr == "34a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 34A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1900"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1600"
        }else if trailerNumberr == "21A" || trailerNumberr == "21a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 21A"
            compartmentTwoGas.text = "1900"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1700"
            dieselCompThree.text = "800"
            dieselCompFour.text = "1700"
        }else if trailerNumberr == "10A" || trailerNumberr == "10a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 10A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1900"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1700"
        }else if trailerNumberr == "64A" || trailerNumberr == "64a"{
            trlNum.isHidden = false
            trlNum.text = "TRL 64A"
            compartmentTwoGas.text = "1800"
            compartmentThreeGas.text = "1000"
            compartmentFourGas.text = "1800"
            dieselCompTwo.text = "1600"
            dieselCompThree.text = "900"
            dieselCompFour.text = "1700"
        }
    }
}
