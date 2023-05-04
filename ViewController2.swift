//
//  ViewController2.swift
//  loginpage
//
//  Created by R81 on 23/03/23.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var otherAccountswitch: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        button2()
        
    }
    @IBAction func nextButtonAction(_ sender: Any) {
        
        if email.text == ""{
            alert1(a: "Username is not find")
        } else{
            
        }
    }
    
    func button2(){
        otherAccountswitch.layer.shadowColor = UIColor.gray.cgColor
        otherAccountswitch.layer.shadowOffset = CGSize(width: 3, height: 3)
        otherAccountswitch.layer.shadowOpacity=3
        otherAccountswitch.layer.cornerRadius = 3
    }
    func button(){
        
        nextButton.layer.shadowColor = UIColor.gray.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        nextButton.layer.shadowOpacity=3
        nextButton.layer.cornerRadius = 3
    }
    func alert1(a:String){
        let alert1 = UIAlertController(title: "ERROR", message: "\(a)", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert1.addAction(UIAlertAction(title: "Cancle", style: .destructive, handler: nil))
        present(alert1, animated: true, completion: nil)
    }
    
}



