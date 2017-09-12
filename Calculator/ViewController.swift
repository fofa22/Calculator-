//
//  ViewController.swift
//  Calculator
//
//  Created by Fahhad Ashour on 9/9/17.
//  Copyright © 2017 Fahhad Ashour. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var numberOnScreen:Double = 0;
     var PreviouseNumber: Double = 0;
    var PerformingMath = false
    var Operation = 0;
    
    
    @IBOutlet weak var displayScreen: UILabel!

@IBAction func Numbers(_ sender: UIButton)
{
  
    if PerformingMath == true
    {
        displayScreen.text = String(sender.tag-1)
        numberOnScreen =  Double(displayScreen.text!)!
        PerformingMath = false
    }
    else
    {
    
        displayScreen.text = displayScreen.text! + String(sender.tag-1)
        numberOnScreen  = Double(displayScreen.text!)!
    }
    
   
}

    // ACTIONS:
    
    @IBAction func arethmetics(_ sender: UIButton) // perform arethmitcs
    {
        if displayScreen.text != "" && sender.tag != 11 && sender.tag != 16
                {
            
        PreviouseNumber = Double(displayScreen.text!)!

            if sender.tag == 12 // Devide
            {
            displayScreen.text = "/";
            }
        
            else if sender.tag == 13 // Multiply
            {
               displayScreen.text = "x";
            }

            else if sender.tag == 14 // Subtraction
            {
                displayScreen.text = "-";
            }

           else if sender.tag == 15 //Addition
            {
                displayScreen.text = "+";
            }
            else if sender.tag == 17 // decimal
            {
                displayScreen.text = ".";
                    }
            else if sender.tag == 18 //change sign
            {
                displayScreen.text = "-";
                    }
            else if sender.tag == 19 //Percntage sign
            {
                displayScreen.text = "%";
                    }

                    Operation = sender.tag;
                    PerformingMath = true;
                    
        }
                    else if sender.tag == 16
                    {
                        if Operation == 12
                        {
                            displayScreen.text = String(PreviouseNumber / numberOnScreen)
                        }
                        else if Operation == 13
                        {
                            displayScreen.text = String(PreviouseNumber * numberOnScreen)
                        }
                        else if Operation == 14
                        {
                            displayScreen.text = String(PreviouseNumber - numberOnScreen)
                        }
                        else if Operation == 15
                        {
                           displayScreen.text = String(PreviouseNumber + numberOnScreen)
                        }
                      else if Operation == 17
                       {
                        displayScreen.text = String(PreviouseNumber + numberOnScreen/10 )
                        }
                        else if Operation == 18
                        {
                       
                            displayScreen.text =  String(-1 * PreviouseNumber)
                        }
                        else if Operation == 19
                        {
                            
                            displayScreen.text =  String( PreviouseNumber/100)
                        }

                    }
                else if sender.tag == 11 // reset everything
                    {
                        displayScreen.text = ""
                        PreviouseNumber = 0;
                        numberOnScreen = 0;
                        Operation = 0;
                        
                    }
        }
        
        
    
        
    



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


