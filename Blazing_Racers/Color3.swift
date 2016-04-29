//
//  Color3.swift
//  Blazing_Racers
//
//  Created by cstark on 4/22/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Color3: UIViewController {
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_special: UIButton!

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
    @IBAction func color13ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color14ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color15ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color16ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color17ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func color18ButtonTapped(sender: AnyObject)
    {
        
    }

}
