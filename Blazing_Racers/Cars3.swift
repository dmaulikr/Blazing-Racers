//
//  Cars3.swift
//  Blazing_Racers
//
//  Created by cstark on 4/22/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit

class Cars3: UIViewController {
    @IBOutlet weak var button_carset1: UIButton!
    @IBOutlet weak var button_carset2: UIButton!
    @IBOutlet weak var button_carset3: UIButton!
    @IBOutlet weak var button_carset4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_carset1.layer.cornerRadius = 10;
        button_carset2.layer.cornerRadius = 10;
        button_carset3.layer.cornerRadius = 10;
        button_carset4.layer.cornerRadius = 10;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func car9ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func car10ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func car11ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func car12ButtonTapped(sender: AnyObject)
    {
        
    }
    

}
