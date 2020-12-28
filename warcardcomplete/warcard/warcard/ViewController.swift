//
//  ViewController.swift
//  warcard
//
//  Created by Devon R on 12/27/20.
//

import UIKit

class ViewController: UIViewController {
    
    var leftScore = 0
    var rightScore = 0

    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealbutton(_ sender: Any) {
        let leftNumber = Int.random(in:2...14)
        let rightNumber = Int.random(in:2...14)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
           leftscorelabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
        rightScore += 1
            rightscorelabel.text = String(rightScore)
    }
        else {
            
        }
    
}

}
