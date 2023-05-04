//
//  ViewController4.swift
//  loginpage
//
//  Created by R81 on 24/03/23.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var chooseUsernamebottun: UIButton!
    @IBOutlet weak var chooseusername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        
    }
    
    @IBAction func chooseUsername(_ sender: Any) {
        if chooseusername.text == "" {
            alert(a: "Enter your username")
            
        }
        else{
            
        }
        var naviget = storyboard?.instantiateViewController(withIdentifier:"ViewController5") as! ViewController5
        navigationController?.pushViewController(naviget, animated: true)
    }
    func button(){
        chooseUsernamebottun.layer.shadowColor = UIColor.gray.cgColor
        chooseUsernamebottun.layer.shadowOffset = CGSize(width: 3, height: 3)
        chooseUsernamebottun.layer.shadowOpacity=3
        chooseUsernamebottun.layer.cornerRadius = 3
    }
    
    func alert(a:String){
        let alert = UIAlertController (title: "ERROR", message: "\(a)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancle", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
   
    
    
}
