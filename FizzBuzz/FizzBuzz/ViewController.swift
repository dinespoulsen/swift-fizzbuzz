//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Dines Poulsen on 12/28/16.
//  Copyright © 2016 Dines Poulsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myFizzBuzz = FizzBuzz()


    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var countShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countButton(_ sender: Any) {
        let number = Int(numberField.text!)
        countShow.text = String(self.myFizzBuzz.repetition(times: number!))
        self.myFizzBuzz.reset()
    }

}

