//
//  ViewController.swift
//  ElementQuiz
//
//  Created by  Mr.Ki on 01.06.2021.
//

import UIKit

class ViewController: UIViewController {

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
        
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        
    }

    
    @IBAction func showAnswerDidPressed(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func nextElementDidPressed(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
}

