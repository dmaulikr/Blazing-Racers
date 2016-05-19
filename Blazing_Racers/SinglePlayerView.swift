//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class SinglePlayerView: UIViewController
{
    // sets the buttons
    @IBOutlet weak var button_timetrial: UIButton!
    @IBOutlet weak var button_speedrace: UIButton!
    // sets variables = the storied variables class
    var variables = StoredVariables()
// sets everything for when the view loads
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(variables.singlePlayer.boolValue)
        //sets  image to background
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        //rounds out button
        button_timetrial.layer.cornerRadius = 10;
        button_speedrace.layer.cornerRadius = 10;
//set it invisible
        button_speedrace.alpha = 0
        button_timetrial.alpha = 0
        
        //makes nav bar invisible
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
    }
    // what happens when view shows up
    override func viewDidAppear(animated: Bool)
    {//animation for button
        super.viewDidAppear(animated)
        view.addSubview(button_speedrace)
        view.addSubview(button_timetrial)

        UIView.animateWithDuration(0.4, animations:
            {
                self.button_speedrace.alpha = 1
        })
        UIView.animateWithDuration(0.2, animations:
            {
                self.button_timetrial.alpha = 1
        })
    
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    // what happens when you click the time trial button
    @IBAction func button_TimeTrial(sender: UIButton)
    {
        // sets the vars time trial and speed test based on which button you click.
        variables.timeTrial = true
        variables.speedTest = false
    }
    // what happens when you click the speedRace Button
    @IBAction func button_SpeedRace(sender: UIButton)
    {
        // sets the vars based on which button you click
        variables.timeTrial = false
        variables.speedTest = true
    }
    // prepares for segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let carsTwoVC = segue.destinationViewController as! Cars2
        carsTwoVC.variables = variables
    }
    
}
