//
//  MainView
//  Blazing_Racers.swift
//
//  Created by MBalsamo on 5/12/66.
//  Copyright © MBalsamo. All righted reserves.
//

import UIKit

class MainViewViewController: UIViewController
{
    @IBOutlet weak var button_oneplayerracing: UIButton!
    @IBOutlet weak var button_splitscreenracing: UIButton!
    @IBOutlet weak var button_bluetoothmultiplayer: UIButton!
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //sets background to the image
            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
            backgroundImage.image = UIImage(named: "main_title1.png")
            self.view.insertSubview(backgroundImage, atIndex: 0)
        
        //makes the white navbar invisible, so it only shows the back text
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true

        
        //makes the button circle
        button_bluetoothmultiplayer.layer.cornerRadius = 10;
        button_splitscreenracing.layer.cornerRadius = 10;
        button_oneplayerracing.layer.cornerRadius = 10;
        //sets button opacity 0
        button_oneplayerracing.alpha = 0
        button_bluetoothmultiplayer.alpha = 0
        button_splitscreenracing.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool)
    { //adds the button
        super.viewDidAppear(animated)
        view.addSubview(button_oneplayerracing)
        view.addSubview(button_bluetoothmultiplayer)
        view.addSubview(button_splitscreenracing)
           UIView.animateWithDuration(2, animations:
            {
                //animates and makes the button visible
            self.button_bluetoothmultiplayer.alpha = 1.0
        })
        UIView.animateWithDuration(1.8, animations:
            {
            self.button_splitscreenracing.alpha = 1.0
        })
        UIView.animateWithDuration(1.5, animations:
            {
            self.button_oneplayerracing.alpha = 1.0
        })
print("Blaze")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onePlayerButtonTapped(sender: UIButton)
    {//sets variable true/false
        variables.singlePlayer = true
        variables.timeTrial = false
        variables.speedTest = false
        variables.splitScreen = false
        variables.Bluetooth = false
    }
    
    @IBAction func splitScreenButtonTapped(sender: UIButton)
    {
        variables.splitScreen = true
        variables.singlePlayer = false
        variables.timeTrial = false
        variables.speedTest = false
        variables.Bluetooth = false
    }
    
    @IBAction func multiPlayerButtonTapped(sender: AnyObject)
    {
        variables.Bluetooth = true
         variables.singlePlayer = false
        variables.timeTrial = false
        variables.speedTest = false
        variables.splitScreen = false

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "singlePlayerSegue"
        {
            let singleVC = segue.destinationViewController as! SinglePlayerView
            singleVC.variables = variables
        }
        else if segue.identifier == "splitscreenSegue"
        {
            let splitVC = segue.destinationViewController as! SplitScreenView
            splitVC.variables = variables
        }
        else if segue.identifier == "multiPlayerSegue"
        {
            let multiVC = segue.destinationViewController as! MultiplayerView
            multiVC.variables = variables
        }
    }
    
}
