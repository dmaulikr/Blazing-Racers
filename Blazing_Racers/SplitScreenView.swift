//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class SplitScreenView: UIViewController
{
var variables = StoredVariables()
    @IBOutlet weak var button_splitscreen: UIButton!
    
    @IBOutlet weak var image_screenshot: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_splitscreen.layer.cornerRadius = 10;
        self.button_splitscreen.alpha = 0.0
        image_screenshot.image = UIImage(named: "splitscreen_preview")
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        view.addSubview(button_splitscreen)
        UIView.animateWithDuration(0.5, animations:
            {
                self.button_splitscreen.alpha = 1
            })
    
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button_SplitScreen(sender: UIButton)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "sSRSegue"
        {
            let carsVC = segue.destinationViewController as! Cars
            carsVC.variables = variables
            
        }
    }
}
