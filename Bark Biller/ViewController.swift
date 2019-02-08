//
//  ViewController.swift
//  Bark Biller
//
//  Created by student9 on 2/7/19.
//  Copyright © 2019 Erica Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var largeDogs: UITextField!
    
    @IBOutlet weak var smallDogs: UITextField!
    
    @IBOutlet weak var minutesWalked: UITextField!
    
    @IBOutlet weak var amountToBill: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculateTotal(_ sender: Any) {
        var smallDogs = Double(self.smallDogs.text!)
        var largeDogs = Double(self.largeDogs.text!)
        var minutesWalked = Double(self.minutesWalked.text!)
        

        let earnings: Double = smallDogs! * ((minutesWalked!/30) * 15) + largeDogs! * ((minutesWalked!/30 * 20))
        
        amountToBill?.text = String(earnings)
    }
    
    

}

