//
//  ViewController.swift
//  loginpage
//
//  Created by R81 on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pg: UIProgressView!
    var timer = Timer()
    @IBOutlet weak var otherAccountswitch: UIButton!
    @IBOutlet weak var sighinButton: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var gethelpbutton: UIButton!
    var time = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        button2()
        
      
       
        
    }
    func progress() {
        var a : Float = 0.0
        self.pg.progress = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.050, repeats: true, block: { _ in
            a += 0.01
            self.pg.progress = a
            if self.pg.progress == 1.0{
                self.timer.invalidate()
                self.pg.progress = 0.0
                self.pgnaviget()
            }
           
        })
        
    }
     
    func button2(){
        otherAccountswitch.layer.shadowColor = UIColor.gray.cgColor
            otherAccountswitch.layer.shadowOffset = CGSize(width: 3, height: 3)
            otherAccountswitch.layer.shadowOpacity=3
            otherAccountswitch.layer.cornerRadius = 5
       
        }
    func button(){
        submitButton.layer.shadowColor = UIColor.gray.cgColor
        submitButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        submitButton.layer.shadowOpacity=3
        submitButton.layer.cornerRadius = 5
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        if userName.text == "" && password.text == ""{
            alert(a: "Username and password is emty")
        }
        else if userName.text == ""
        {
           alert(a: "Enter your username")
        }
        else if password.text == ""{
            alert(a: "Enter your password")
        }
        else if password.text?.count ?? 0 < 6{
            alert(a: "Minimum six charactors enter")
        }
        else{
            progress()
           
           
            
           
        }
    }
    
    @IBAction func getelputtonlicked(_ sender: UIButton) {
        let naviget = storyboard?.instantiateViewController(withIdentifier:"ViewController2")as!ViewController2
        navigationController?.pushViewController(naviget, animated: true)
    }
    func alert(a:String){
        let alert = UIAlertController(title: "ERROR", message: "\(a)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancle", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    @IBAction func signinButtonclicked(_ sender: UIButton) { let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(naviget, animated: true)
        
        
       
    }
    
    func pgnaviget(){
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    
}
    
   
  

