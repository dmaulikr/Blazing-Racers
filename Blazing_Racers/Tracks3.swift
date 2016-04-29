//
//  Tracks3.swift
//  Blazing_Racers
//
//  Created by cstark on 4/22/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Tracks3: UIViewController {
    @IBOutlet weak var button_track1: UIButton!
    @IBOutlet weak var button_track2: UIButton!

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
    @IBAction func tracks5ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func track6ButtonTapped(sender: AnyObject)
    {
        
    }
    
}
