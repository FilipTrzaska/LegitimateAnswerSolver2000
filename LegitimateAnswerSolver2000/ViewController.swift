//
//  ViewController.swift
//  LegitimateAnswerSolver2000
//
//  Created by Filip Trzaska on 27.09.2017.
//  Copyright © 2017 Filip Trzaska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallImage1 : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var updateBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ballButton(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage(){
        randomBallImage1 = Int(arc4random_uniform(4))
        
        updateBallView.image = UIImage(named: ballArray[randomBallImage1])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
        
}
    


