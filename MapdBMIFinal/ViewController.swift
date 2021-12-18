//
//  ViewController.swift
//  MapdBMIFinal
//
//  Created by Owner on 2021-12-16.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Name: UITextField!
    
    
    
    @IBOutlet weak var Weight: UITextField!
    
    
    @IBOutlet weak var Height: UITextField!
    
    
    @IBOutlet weak var BMI: UILabel!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Result(_ sender: Any) {
        if(self.Height.text!=="" && self.Weight.text!==""){
            return
        }
        
        let height = Float(self.Height.text!)!
        let weight = Float(self.Weight.text!)!
        
        let heightsquare = height*height
        
         
        var bmi: Float =
        weight/heightsquare
        self.BMI.text = "BMI \(self.Name.text!), Your BMI is \(String(bmi))"
           
    }

}

