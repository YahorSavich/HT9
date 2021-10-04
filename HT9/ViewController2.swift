//
//  ViewController2.swift
//  HT9
//
//  Created by Виктория Савич on 22.09.21.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Second Controller"
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: true)
//    }
    @IBAction func actionReBack(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func actionShowNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "ViewController3")
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
