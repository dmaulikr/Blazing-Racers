//
//  CarsPlayerTwo.swift
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class MultiplayerView: UIViewController
{
    @IBOutlet var button_bluetooth: UIView!
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)  //background
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
}
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button_BluetoothRacing(sender: UIButton)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let carsThreeVC = segue.destinationViewController as! Cars3
        carsThreeVC.variables = variables
        
    }


}
