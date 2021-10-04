//
//  SwipeController.swift
//  HT9New
//
//  Created by Виктория Савич on 25.09.21.
//

import UIKit

class SwipeController: UIViewController {
    
    @IBOutlet weak var down: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer) {
        guard let recognizerView = recognizer.view else {
            return
        }
        
        let translation = recognizer.translation(in: view)
        recognizerView.center.x += translation.x
        recognizer.view?.center.y += translation.y
        recognizer.setTranslation(.zero, in: view)
    }
}
