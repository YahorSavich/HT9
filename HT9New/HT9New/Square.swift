//
//  Square.swift
//  HT9New
//
//  Created by Виктория Савич on 24.09.21.
//

import UIKit

enum Colors: CaseIterable {
    case red
    case blue
    case green
    case orange
    
    var color: UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .blue:
            return UIColor.blue
        case .green:
            return UIColor.green
        case .orange:
            return UIColor.orange
        }
    }
    
    var name: String {
        switch self {
        case .red:
            return "red"
        case .blue:
            return "blue"
        case .green:
            return "green"
        case .orange:
            return "orange"
        }
    }
}

class Square: UIViewController {
    
    @IBOutlet weak var buttonStyles: UIButton! {
        didSet {
            buttonStyles.layer.cornerRadius = buttonStyles.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles.layer.shadowRadius = 8.8
            buttonStyles.layer.shadowOpacity = 0.7
            buttonStyles.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
    
    @IBOutlet weak var buttonStyles2: UIButton! {
        didSet {
            buttonStyles2.layer.cornerRadius = buttonStyles2.bounds.height / 2
            //buttonStyles.layer.shadowColor = UIColor.black.cgColor
            buttonStyles2.layer.shadowOffset = CGSize(width: 5, height: 10)
            buttonStyles2.layer.shadowRadius = 8.8
            buttonStyles2.layer.shadowOpacity = 0.7
            buttonStyles2.layer.borderWidth = 2
            //buttonStyles.layer.borderColor = UIColor.orange.cgColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SQUARE"
    }
    
    func isAvailableToPlace(rect: CGRect) -> Bool {
        let isInSuperView = view.frame.contains(rect)
        var isIntersects = false
        view.subviews.forEach { subview in
            if subview.frame.intersects(rect) {
                isIntersects = true
            }
        }
        
        return isInSuperView && !isIntersects
    }
    
    func createSquare() -> CGRect {
        
        let width: Int = 55
        let originX: Int = .random(in: 0...Int(view.frame.width))
        let originY: Int = .random(in: 0...Int(view.frame.height))
        return CGRect(x: originX, y: originY, width: width, height: width)
    }
    
    @IBAction func actionShowNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "Ball")
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func actionCreateSquare(_ sender: Any) {
        let Square = createSquare()
        let randomColor = Colors.allCases.randomElement()
        let isAvailable = isAvailableToPlace(rect: Square)
        
        if isAvailable {
            let myLabel = UILabel()
            myLabel.frame = Square
            myLabel.textAlignment = .center
            let name = randomColor?.name
            let color = randomColor!.color
            myLabel.backgroundColor = color
            myLabel.text = name
            // myLabel.textColor = UIColor.black
            self.view.addSubview(myLabel)
            print("EEEEE")
        } else {
            print("Ohhhhh")
        }
    }
}
