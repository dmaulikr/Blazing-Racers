//
//  Color2.swift
//  Blazing_Racers
//
//  Created by cstark on 4/22/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Color2: UIViewController {
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_special: UIButton!

    override func viewDidLoad() {
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
        button_special.layer.cornerRadius = 10;    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//nate your black
    }
    @IBAction func color1ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color2ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color3ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color4ButtonTapped(sender: AnyObject)
    {
        
    }

    @IBAction func color5ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color6ButtonTapped(sender: AnyObject)
    {
        
    }
}
