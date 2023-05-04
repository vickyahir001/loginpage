//
//  ViewController5.swift
//  loginpage
//
//  Created by R81 on 24/03/23.
//

import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var choosePasswordBttun: UIButton!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
    }
    @IBAction func nextButtonaction(_ sender: Any) {
        if passwordText.text == "" {
            alert(a: "Enter your password")
        }
        else if passwordText.text?.count ?? 0 < 6{
            alert(a: "Minimum six charactors enter")
        }
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(naviget, animated: true)
    }
    func button(){
        choosePasswordBttun.layer.shadowColor = UIColor.gray.cgColor
        choosePasswordBttun.layer.shadowOffset = CGSize(width: 3, height: 3)
        choosePasswordBttun.layer.shadowOpacity=3
        choosePasswordBttun.layer.cornerRadius = 3
    }
    func alert(a:String){
        let alert = UIAlertController (title: "ERROR", message: a, preferredStyle: .alert)
        //        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        //        alert.addAction(UIAlertAction(title: "cancle", style: .destructive, handler: nil))
        let ok: UIAlertAction = UIAlertAction(title: "Ok", style: .default)
        let cancel: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(ok)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}




