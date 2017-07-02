//
//  SecondViewController.swift
//  Physics Calculator
//
//  Created by Alexandra Stavrakos on 6/30/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var showAnswer: UILabel!

    var equation1 = Kinematic()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        showAnswer.text = String(calcAnswer(entry: equation1)) + " meters"
    
    }
    
    func calcAnswer(entry: Kinematic) -> Double
    {
        var answer = entry.velocity * entry.time
        answer = answer + (0.5 * entry.acceleration * (entry.time * entry.time))
        return answer
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    
    }
    

}
