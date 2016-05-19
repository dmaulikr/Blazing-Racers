//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class Tracks3: UIViewController {
    @IBOutlet weak var button_track1: UIButton!
    @IBOutlet weak var button_track2: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)         //view background
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_track2.layer.cornerRadius = 10;          //corner roundedness on buttons
        button_track1.layer.cornerRadius = 10;
        
        button_track2.alpha = 0
        button_track1.alpha = 0                 //animation
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        view.addSubview(button_track2)
        view.addSubview(button_track1)
        UIView.animateWithDuration(0.6, animations:
            {
                self.button_track1.alpha = 1
        })
        UIView.animateWithDuration(0.9, animations:             //animation
            {
                self.button_track2.alpha = 1
        })

        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // sets the track equal to what button you tapped
    @IBAction func tracks5ButtonTapped(sender: AnyObject)
    {
        variables.track =  "road_1_singleplayer"
    }
    
    @IBAction func track6ButtonTapped(sender: AnyObject)
    {
        variables.track = "road_2_singleplayer"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let gameVC = segue.destinationViewController as! GameViewController
        gameVC.variables = variables
    }
}
