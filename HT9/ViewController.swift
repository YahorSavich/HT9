//
//  ViewController.swift
//  HT9
//
//  Created by Виктория Савич on 22.09.21.
//   переделать предыдущие ДЗ на навконтроллер
// • сделать игрушку - куда тапнул, там появляется кружок. Если там уже был круг - он исчезает
// • переделать ДЗ-7.2 на перемещение кружка по свайпам
// • отдельный проект: перемещаем палец по экрану не отрывая - за ним перемещается кружок


import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var recognizerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar()
    }
    
    func navigationBar() {
        title = "First Controller"
        //navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = .green
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    @IBAction func actionShowNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "ViewController2")
        navigationController?.pushViewController(controller, animated: true)
    }
    
//    @IBAction func actionSwipeNext(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(identifier: "ViewController2")
//        navigationController?.pushViewController(controller, animated: true)
//    }
}

