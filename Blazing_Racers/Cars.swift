//
//  Cars.swift
//  Blazing_Racers
//
//  Created by cstark on 4/15/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Cars: UIViewController {
    @IBOutlet weak var button_carset1: UIButton!
    @IBOutlet weak var button_carset3: UIButton!
    @IBOutlet weak var button_carset2: UIButton!
    @IBOutlet weak var button_carset4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func color1ButtonPressed(sender: AnyObject)
    {
        
    }
    @IBAction func colorButton2Pressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func color3Pressed(sender: AnyObject)
    {
        
    }
    @IBAction func color4Pressed(sender: AnyObject)
    {
        
    }
    
}
