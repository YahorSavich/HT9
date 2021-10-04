//
//  ViewController3.swift
//  HT9
//
//  Created by Виктория Савич on 22.09.21.
//

import UIKit

class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third Controller"
    }
    
    
    @IBAction func actionBack2(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionBackOneStep(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
