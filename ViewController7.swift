//
//  ViewController7.swift
//  loginpage
//
//  Created by R81 on 24/03/23.
//

import UIKit

class ViewController7: UIViewController {
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var phonenumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        
      
    }
   
    
    @IBAction func action(_ sender: Any) {
    
    
    
        if phonenumber.text ?? "" >= "A" &&  phonenumber.text ?? "" <= "Z"{
            alert(a: "Enter your phone numbers")
        }
            else if phonenumber.text ?? "" >= "a" &&  phonenumber.text ?? "" <= "z"{
                alert(a: "Enter your phone numbers")
                
    }
        else if phonenumber.text == ""{
            alert(a: "Enter your phone numbers")
        }
   
 
        
     }
        

    @IBAction func alertaction(_ sender: Any) {
    }
    func alert(a:String){
        let alert = UIAlertController(title: "Error", message: "\(a)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancle", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func button() {
        nextbutton.layer.shadowColor = UIColor.gray.cgColor
        nextbutton.layer.shadowOffset = CGSize(width: 3, height: 3)
        nextbutton.layer.shadowOpacity=3
        nextbutton.layer.cornerRadius = 3
        
        
        
    }
    
    
    
}
