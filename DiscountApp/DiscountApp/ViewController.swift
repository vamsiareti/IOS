//
//  ViewController.swift
//  DiscountApp
//
//  Created by Areti,Vamsi Krishna on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var discount: UITextField!

    @IBAction func SubmitButton(_ sender: Any) {
        var enteredAmount = Double (amount.text!)
        var enteredDiscount = Double (discount.text!)
        var priceAfterDiscount = enteredAmount! * (1-enteredDiscount! / 100)
        textLabel.text = "Price after discount is: \(priceAfterDiscount)"
    }
    
    @IBOutlet weak var textLabel: UILabel!
}

