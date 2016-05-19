//
//  ColorPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class ColorPlayerTwo: UIViewController {
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_special: UIButton!

    var variables = StoredVariables()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(variables.carTwo)
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_black.layer.cornerRadius = 10;
        button_blue.layer.cornerRadius = 10;
        button_grey.layer.cornerRadius = 10;
        button_purple.layer.cornerRadius = 10;
        button_pink.layer.cornerRadius = 10;        //button corner
        button_orange.layer.cornerRadius = 10;
        button_special.layer.cornerRadius = 10;
        button_black.alpha = 0
        button_blue.alpha = 0
        button_grey.alpha = 0                       //animation
        button_orange.alpha = 0
        button_pink.alpha = 0
        button_purple.alpha = 0
        button_special.alpha = 0
        // sets the button backgrounds equal to the car images
        if variables.carTwo == "car1_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car1_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car1_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car1_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car1_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car1_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car1_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car1_special")!)
        } else if variables.carTwo == "car2_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car2_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car2_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car2_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car2_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car2_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car2_special")!)
        }
        else if variables.carTwo == "car3_grey"
        {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car3_black")!)
            button_blue.backgroundColor = UIColor(patternImage: UIImage(named: "car3_blue")!)
            button_grey.backgroundColor = UIColor(patternImage: UIImage(named: "car3_grey")!)
            button_purple.backgroundColor = UIColor(patternImage: UIImage(named: "car3_purple")!)
            button_pink.backgroundColor = UIColor(patternImage: UIImage(named: "car3_pink")!)
            button_orange.backgroundColor = UIColor(patternImage: UIImage(named: "car3_orange")!)
            button_special.backgroundColor = UIColor(patternImage: UIImage(named: "car3_special")!)
        }
        else if variables.carTwo == "car_4grey"
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // sets the color for the second car in splitscreen
    @IBAction func color1buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_black"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_black"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_black"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_black"
        }
    }
    
    @IBAction func color2buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_purple"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_purple"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_purple"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_purple"
        }

    }

    @IBAction func color3buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_blue"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_blue"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_blue"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_blue"
        }
    }
    @IBAction func color4buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_pink"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_pink"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_pink"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_pink"
        }
    }
    @IBAction func color5buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_grey"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_grey"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_grey"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_grey"
        }
    }
    @IBAction func color6buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_orange"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_orange"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_orange"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_orange"
        }

    }
    @IBAction func color7buttonpressed(sender: UIButton) {
        if variables.carTwo == "car1_grey"
        {
            variables.colorsTwo = "car1_special"
        }
        else if variables.carTwo == "car2_grey"
        {
            variables.colorsTwo = "car2_special"
        }
        else if variables.carTwo == "car3_grey"
        {
            variables.colorsTwo = "car3_special"
        }
        else if variables.carTwo == "car4_grey"
        {
            variables.colorsTwo = "car4_special"
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let tracksVC = segue.destinationViewController as! Tracks
        tracksVC.variables = variables
        print("var passed")
    }
}
