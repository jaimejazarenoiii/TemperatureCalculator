//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by Jaime Jazareno III on 28/12/2017.
//  Copyright © 2017 Jaime Jazareno III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var formatSeg: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculate(_ sender: Any) {
        self.resignFirstResponder()
        
        if formatSeg.selectedSegmentIndex == 0 {
            let fahrenheit = Double(textField.text!)
            let celsius = (fahrenheit! - 32) / 1.8
            
            outputLabel.text = String(format: "%0.2f Celsius", celsius)
            
            if celsius > 120 {
                imageView.image = UIImage(named: "Temp9")
            }
            else if celsius > 100 {
                imageView.image = UIImage(named: "Temp8")
            }
            else if celsius > 80 {
                imageView.image = UIImage(named: "Temp7")
            }
            else if celsius > 60 {
                imageView.image = UIImage(named: "Temp6")
            }
            else if celsius > 40 {
                imageView.image = UIImage(named: "Temp5")
            }
            else if celsius > 20 {
                imageView.image = UIImage(named: "Temp4")
            }
            else if celsius > 0 {
                imageView.image = UIImage(named: "Temp3")
            }
            else if celsius > -20 {
                imageView.image = UIImage(named: "Temp2")
            }
            else if celsius < -20 {
                imageView.image = UIImage(named: "Temp1")
            }
        }
        else if formatSeg.selectedSegmentIndex == 1 {
            let celsius = Double(textField.text!)
            let fahrenheit = celsius! * 1.8 + 32
            
            outputLabel.text = String(format: "%0.2f Fahrenheit", fahrenheit)
            
            if fahrenheit > 160 {
                imageView.image = UIImage(named: "Temp9")
            }
            else if fahrenheit > 140 {
                imageView.image = UIImage(named: "Temp8")
            }
            else if fahrenheit > 120 {
                imageView.image = UIImage(named: "Temp7")
            }
            else if fahrenheit > 100 {
                imageView.image = UIImage(named: "Temp6")
            }
            else if fahrenheit > 80 {
                imageView.image = UIImage(named: "Temp5")
            }
            else if fahrenheit > 60 {
                imageView.image = UIImage(named: "Temp4")
            }
            else if fahrenheit > 40 {
                imageView.image = UIImage(named: "Temp3")
            }
            else if fahrenheit > 20 {
                imageView.image = UIImage(named: "Temp2")
            }
            else if fahrenheit < 20 {
                imageView.image = UIImage(named: "Temp1")
            }
        }
        
    }
    @IBAction func switchFormat(_ sender: Any) {
        if formatSeg.selectedSegmentIndex == 0 {
            enterLabel.text = "Enter Fahrenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
        }
        else if formatSeg.selectedSegmentIndex == 1 {
            enterLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
        }
    }
    

}

