//
//  ViewController6.swift
//  loginpage
//
//  Created by R81 on 24/03/23.
//

import UIKit

class ViewController6: UIViewController {
    var userId : String = ""
   
    @IBOutlet weak var completbutttun: UIButton!
    @IBOutlet weak var newnumberadd: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       button()
       
        
    }
    
    @IBAction func addnumber(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(naviget, animated: true)
    }
    func button(){
        completbutttun.layer.shadowColor = UIColor.gray.cgColor
        completbutttun.layer.shadowOffset = CGSize(width: 3, height: 3)
        completbutttun.layer.shadowOpacity=3
        completbutttun.layer.cornerRadius = 3
    }
    
}
