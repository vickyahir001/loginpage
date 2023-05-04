//
//  ViewController3.swift
//  loginpage
//
//  Created by R81 on 24/03/23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequest(URLRequest(url: URL(string: "https://www.youtube.com/watch?v=3y23UebzCYw")!))
       
    }
}

