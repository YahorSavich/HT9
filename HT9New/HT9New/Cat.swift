//
//  Cat.swift
//  HT9New
//
//  Created by Виктория Савич on 24.09.21.
//


import UIKit

class Cat: UIViewController {
    let customView = UIView()
    let button =  UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CAT"
        
        customView.backgroundColor = .random
        
        let frameX = view.frame.width
        let frameY = view.frame.height
        customView.frame = CGRect(x: 0, y: 0, width: 100 , height: 100)
        customView.layer.cornerRadius = customView.frame.width / 2
        customView.center = view.center
        view.addSubview(customView)
        //button.backgroundColor = .random
        button.frame = CGRect(x: Int(customView.frame.width) / 4,
                              y: Int(customView.frame.height) / 4,
                              width:Int(customView.frame.width) / 2 ,
                              height: Int(customView.frame.height) / 2)
        button.layer.cornerRadius = button.frame.width / 2
        button.setTitle("Go", for:  .highlighted)
        button.addTarget(self, action: #selector(actionTapeCircle), for: .touchUpInside)
        customView.addSubview(button)
    }
    
    @IBAction func actionShowNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "Square")
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    @objc func actionTapeCircle(_ sender: Any) {
        customView.frame = CGRect(x: CGFloat(arc4random() % UInt32((view.frame.size.width - 100))), y: CGFloat(arc4random() % UInt32((view.frame.size.height - 100))), width: customView.frame.width, height: customView.frame.height)
    }
    @IBOutlet weak var buttonStyles: UIButton! {
        didSet {
            buttonStyles.layer.cornerRadius = buttonStyles.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles.layer.shadowOffset = CGSize(width: 10, height: 20)
            buttonStyles.layer.shadowRadius = 10
            buttonStyles.layer.shadowOpacity = 0.7
            buttonStyles.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
