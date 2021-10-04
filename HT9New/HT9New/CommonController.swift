//
//  CommonController.swift
//  HT9New
//
//  Created by Виктория Савич on 24.09.21.
//

import UIKit

class CommonController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar()
    }
    
    func navigationBar() {
        title = "START WINDOW"
        
        navigationController?.navigationBar.isTranslucent = true
//        navigationController?.navigationBar.backgroundColor = .green
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
        
    }
    
    @IBOutlet weak var buttonStyles: UIButton! {
        didSet {
            buttonStyles.layer.cornerRadius = buttonStyles.bounds.height / 2
            buttonStyles.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles.layer.shadowRadius = 8.8
            buttonStyles.layer.shadowOpacity = 0.7
            buttonStyles.layer.borderWidth = 2
        }
    }
    
    @IBOutlet weak var buttonStyles2: UIButton! {
        didSet {
            buttonStyles2.layer.cornerRadius = buttonStyles2.bounds.height / 2
            buttonStyles2.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles2.layer.shadowRadius = 8.8
            buttonStyles2.layer.shadowOpacity = 0.7
            buttonStyles2.layer.borderWidth = 2
        }
    }
    
    @IBOutlet weak var buttonStyles3: UIButton! {
        didSet {
            buttonStyles3.layer.cornerRadius = buttonStyles3.bounds.height / 2
            buttonStyles3.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles3.layer.shadowRadius = 8.8
            buttonStyles3.layer.shadowOpacity = 0.7
            buttonStyles3.layer.borderWidth = 2
        }
    }
    
    @IBAction func actionButtonCat(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "Cat")
        controller.modalPresentationStyle = .overFullScreen
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func actionButtonSquare(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "Square")
        controller.modalPresentationStyle = .overFullScreen
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func actionButtonBall(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "Ball")
        controller.modalPresentationStyle = .overFullScreen
        navigationController?.pushViewController(controller, animated: true)
    }
}
