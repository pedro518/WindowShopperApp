//
//  ViewController.swift
//  WindowShopeerApp
//
//  Created by Pedro Antonio Ruiz Cuesta on 20/03/2019.
//  Copyright © 2019 Pedro Antonio Ruiz Cuesta. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: UICurrencyTxtField!
    @IBOutlet weak var priceTxt: UICurrencyTxtField!
    
    @IBOutlet weak var hoursTxt: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(UIColor.white, for: .normal)
        
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        
        hoursTxt.isHidden = true
        hoursLabel.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                hoursLabel.isHidden = false
                hoursTxt.isHidden = false
                
                hoursTxt.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculation(_ sender: Any) {
        hoursTxt.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }


}

