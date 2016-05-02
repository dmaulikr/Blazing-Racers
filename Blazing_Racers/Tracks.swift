//
//  Tracks.swift
//  Blazing_Racers
//
//  Created by cstark on 4/15/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Tracks: UIViewController {
    @IBOutlet weak var button_track1: UIButton!
    @IBOutlet weak var button_track2: UIButton!
//memes
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_track2.layer.cornerRadius = 10;
        button_track1.layer.cornerRadius = 10;
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tracks3ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func tracks4ButtonTapped(sender: AnyObject)
    {
        
    }
    
}
