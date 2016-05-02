//
//  SplitScreenView.swift
//  Blazing_Racers
//
//  Created by nmalin-jones on 4/17/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit
//memes
class SplitScreenView: UIViewController {
var variables = StoredVariables()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button_SplitScreen(sender: UIButton) {
    }



}
