//
//  ViewController.swift
//  segueAdvanced
//
//  Created by Tanja Keune on 8/21/17.
//  Copyright © 2017 SUGAPP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var rowActive = -1
    @IBOutlet weak var textField: UITextField!
    var holdValue1: [String] = []
    
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func viewWillAppear(_ animated: Bool) {
        
        
        var text = "Active row was \(rowActive) and the value is "
            
        if rowActive >= 0 {
            text += holdValue1[rowActive]
        } else {
            text += "empty"
        }
        label1.text = text 

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            
            let destination = segue.destination as! SecondViewController
            holdValue1.append(textField.text!)
            destination.holdValue2 = holdValue1
        }
    }
}

