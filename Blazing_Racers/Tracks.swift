//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class Tracks: UIViewController
{
    @IBOutlet weak var button_track1: UIButton!
    @IBOutlet weak var button_track2: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(variables.colors)
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_track2.layer.cornerRadius = 10;                  //button corner
        button_track1.layer.cornerRadius = 10;
        
        button_track2.alpha = 0             //animation
        button_track1.alpha = 0
        
}
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        view.addSubview(button_track2)
        view.addSubview(button_track1)
        UIView.animateWithDuration(0.6, animations:
            {
                self.button_track1.alpha = 1
        })
        UIView.animateWithDuration(0.9, animations:
            {
                self.button_track2.alpha = 1
        })
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    // sets the track equal to what button you click
    @IBAction func tracks3ButtonTapped(sender: AnyObject)
    {
      variables.track = "road_1_multiplayer"
    }
    
    @IBAction func tracks4ButtonTapped(sender: AnyObject)
    {
        variables.track = "road_2_multiplayer"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let gameVC = segue.destinationViewController as! GameViewController
        gameVC.variables = variables
    }
}
