//
//  
//  Blazing_Racers
//
//  Created by MBalsamo on 5/12/16.
//  Copyright © 2016 MBalsamo. All rights reserved.
//

import UIKit

class CarsPlayerTwo: UIViewController {
    @IBOutlet weak var button_carset1: UIButton!
    @IBOutlet weak var button_carset2: UIButton!
    @IBOutlet weak var button_carset3: UIButton!
    @IBOutlet weak var button_carset4: UIButton!

    var variables = StoredVariables()
// sets the view up for when it loads
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
        // this sets the background colors for the cars in the view when it loads
        button_carset1.backgroundColor = UIColor(patternImage: UIImage(named: "car1_grey")!)
        button_carset2.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)
        button_carset3.backgroundColor = UIColor(patternImage: UIImage(named: "car3_grey")!)
        button_carset4.backgroundColor = UIColor(patternImage: UIImage(named: "car4_grey")!)
        button_carset1.alpha = 0
        button_carset2.alpha = 0
        button_carset3.alpha = 0
        button_carset4.alpha = 0
    }
    // what occurs when the view loads
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        view.addSubview(button_carset1)
        view.addSubview(button_carset2)
        view.addSubview(button_carset3)
        view.addSubview(button_carset4)
        UIView.animateWithDuration(0.5, animations:
            {
                self.button_carset1.alpha = 1
        })
        UIView.animateWithDuration(0.7, animations:
            {
                self.button_carset2.alpha = 1
        })
        UIView.animateWithDuration(0.8, animations:
            {
                self.button_carset3.alpha = 1
        })
        UIView.animateWithDuration(0.9, animations:
            {
                self.button_carset4.alpha = 1
        })
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}

    @IBAction func cartype1(sender: UIButton) {
        // this sets the variable car = to the car set you chose based on the button, which then transfers it to the next view for the second car in splitscreen
        variables.carTwo = "car1_grey"
    }
    
    @IBAction func cartype2(sender: UIButton) {
        variables.carTwo = "car2_grey"
    }
    
    @IBAction func cartype3(sender: UIButton) {
        variables.carTwo = "car3_grey"
    }
    
    @IBAction func cartype4(sender: UIButton) {
        variables.carTwo = "car4_grey"
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let colorPlayerTwoVC = segue.destinationViewController as! ColorPlayerTwo
        colorPlayerTwoVC.variables = variables
    }
    
}
