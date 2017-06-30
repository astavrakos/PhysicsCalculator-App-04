//
//  ViewController.swift
//  Physics Calculator
//
//  Created by Alexandra Stavrakos on 6/30/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayVelocity: UITextField!
    @IBOutlet weak var displayTime: UITextField!
    @IBOutlet weak var displayAcceleration: UITextField!
    
    var equation1 = Kinematic()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onCalcTapped(_ sender: Any)
    {
        
        if(displayVelocity.text != "" &&
            displayTime.text != "" &&
            displayAcceleration.text != "")
        {
            let dvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            equation1.velocity = Double(displayVelocity.text!)!
            equation1.time = Double(displayTime.text!)!
            equation1.acceleration = Double(displayAcceleration.text!)!
            dvc.equation1 = self.equation1
            self.present(dvc, animated: true, completion: nil)
            
        }
        
    }
    
}

