//
//  ViewController.swift
//  WhereIsMyCar
//
//  Created by Ali on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var floorTextfield: UITextField!
    
    @IBOutlet weak var numberTextfield: UITextField!
    
    @IBOutlet weak var floorLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
//    name \to floor
//    birtday \to number
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedfloor = UserDefaults.standard.object(forKey: "floor")
        let storednumber = UserDefaults.standard.object(forKey: "number")
        
        if let newnumber = storedfloor as? String {
            floorLabel.text = "Floor : \(newnumber)"
            
            if let newnumber = storednumber as? String {
                
                numberLabel.text = "number : \(newnumber)"
            }
            
            
        }
        
        
        
        
    }
    @IBAction func savebuttonClicked(_ sender: Any) {
        UserDefaults.standard.set(floorTextfield.text, forKey: "Floor")
        UserDefaults.standard.set(numberTextfield.text, forKey: "Number")
        
        floorLabel.text = "Floor : \(floorTextfield.text!)"
        numberLabel.text = "Number : \(numberTextfield.text!)"
        
        
        
    }
    @IBAction func deletebuttonClicked(_ sender: Any) {
        let storedfloor = UserDefaults.standard.object(forKey: "Floor")
        let storednumber = UserDefaults.standard.object(forKey: "Number")
        
        if let newnumber = storedfloor as? String {
            UserDefaults.standard.removeObject(forKey: "Floor")
            floorLabel.text = "Floor : "
            if let newnumber = storednumber as? String {
                UserDefaults.standard.removeObject(forKey: "Number")
                numberLabel.text = "Number :"
                
            }
            
            
            
            
            
            
            
        }
        
    }
}
