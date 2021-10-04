//
//  ApAndDisapCircle.swift
//  HT9New
//
//  Created by Виктория Савич on 25.09.21.
//

import UIKit

class ApAndDisapCircle: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "TAP CIRCLE"
        
        let tapRecognizer = UITapGestureRecognizer(target:self, action: #selector(singleTap))
        tapRecognizer.numberOfTapsRequired = 1
    
        self.view.addGestureRecognizer(tapRecognizer)
    }
    
    @objc func singleTap(_ sender: UITapGestureRecognizer) {
        
        print("view tap")
            
        let circleView = getCircleView()
        circleView.center = sender.location(in: view)

        
        let tapCircleRecognizer = UITapGestureRecognizer(target:self, action: #selector(circleTap))
        tapCircleRecognizer.numberOfTapsRequired = 1
        
        circleView.addGestureRecognizer(tapCircleRecognizer)
        
        self.view.addSubview(circleView)
    }
    
    @objc func circleTap(_ sender: UITapGestureRecognizer) {
        
        print("circle tap")
        
        sender.view?.removeFromSuperview()
    }
    
    func getCircleView() -> UIView{
        
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        newView.layer.cornerRadius = newView.frame.width / 2
        newView.backgroundColor = .random
        
        return newView
    }
    
    @IBAction func actionShowNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "SwipeController")
        navigationController?.pushViewController(controller, animated: true)
    }
    
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
}
