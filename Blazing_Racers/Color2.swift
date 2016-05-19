//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class Color2: UIViewController
{
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_special: UIButton!
    var variables = StoredVariables()
    
    //blaze it race it
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_black.layer.cornerRadius = 10;
        button_blue.layer.cornerRadius = 10;
        button_grey.layer.cornerRadius = 10;
        button_purple.layer.cornerRadius = 10;
        button_pink.layer.cornerRadius = 10;
        button_orange.layer.cornerRadius = 10;
        button_special.layer.cornerRadius = 10;
        button_black.alpha = 0
        button_blue.alpha = 0
        button_grey.alpha = 0
        button_orange.alpha = 0
        button_pink.alpha = 0
        button_purple.alpha = 0
        button_special.alpha = 0
        if variables.car == "car1_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car1_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car1_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car1_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car1_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car1_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car1_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car1_special")!)
        } else if variables.car == "car2_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car2_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car2_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car2_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car2_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car2_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car2_special")!)
        }
        else if variables.car == "car3_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car3_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car3_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car3_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car3_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car3_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car3_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car3_special")!)
        }
        else if variables.car == "car_4grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car4_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car4_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car4_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car4_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car4_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car4_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car4_special")!)
        }
    }
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        view.addSubview(button_black)
        view.addSubview(button_blue)
        view.addSubview(button_grey)
        view.addSubview(button_orange)
        view.addSubview(button_pink)
        view.addSubview(button_purple)
        view.addSubview(button_special)
        UIView.animateWithDuration(0.6, animations:
            {
                self.button_black.alpha = 1
                self.button_special.alpha = 1
        })
        UIView.animateWithDuration(0.8, animations:
            {
                self.button_blue.alpha = 1
                self.button_orange.alpha = 1
                self.button_purple.alpha = 1
        })
        UIView.animateWithDuration(1.1, animations:
            {
                self.button_grey.alpha = 1
                self.button_special.alpha = 1
                self.button_pink.alpha = 1

        })
    }
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }
    // sets the car color to what you what button you chose
    @IBAction func color1ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_black"
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car1_black")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_black"
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car2_black")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_black"
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car3_black")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_black"
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car4_black")!)
        }

    }
    
    @IBAction func color2ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_purple"
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car1_blue")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_purple"
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car2_blue")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_purple"
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car3_blue")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_purple"
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car4_blue")!)
        }

    }
    
    @IBAction func color3ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_blue"
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car1_grey")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_blue"
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_blue"
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car3_grey")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_blue"
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car4_grey")!)
        }
    }
    
    @IBAction func color4ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_pink"
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car1_orange")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_pink"
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car2_orange")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_pink"
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car3_orange")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_pink"
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car4_orange")!)
        }

    }

    @IBAction func color5ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_grey"
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car1_pink")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_grey"
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car2_pink")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_grey"
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car3_pink")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_grey"
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car4_pink")!)
        }

    }
    
    @IBAction func color6ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_orange"
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car1_purple")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_orange"
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car2_purple")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_orange"
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car3_purple")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_orange"
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car4_purple")!)
        }
   
    }
    @IBAction func nateisspecial(sender: UIButton)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_special"
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car1_special")!)
        }
        else if variables.car == "car2_grey"
        {
            variables.colors = "car2_special"
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car2_special")!)
        }
        else if variables.car == "car3_grey"
        {
            variables.colors = "car3_special"
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car3_special")!)
        }
        else if variables.car == "car4_grey"
        {
            variables.colors = "car4_special"
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car4_special")!)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
       let tracksTwoVC = segue.destinationViewController as! Tracks2
        tracksTwoVC.variables = variables
    }
}
