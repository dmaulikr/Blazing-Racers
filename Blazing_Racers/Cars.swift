

import UIKit

class Cars: UIViewController
{
    @IBOutlet weak var button_carset1: UIButton!
    @IBOutlet weak var button_carset3: UIButton!
    @IBOutlet weak var button_carset2: UIButton!
    @IBOutlet weak var button_carset4: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
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
        
        button_carset1.alpha = 0
        button_carset2.alpha = 0
        button_carset3.alpha = 0
        button_carset4.alpha = 0


    }
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
    
        
        //Run it in a loop so all for cars get into a button
        //set the car variable equal to the button you pressed

//        button_carset2.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)

    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func color1ButtonPressed(sender: AnyObject)
    {
        
    }
    @IBAction func colorButton2Pressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func color3Pressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func color4Pressed(sender: AnyObject)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let colorVC = segue.destinationViewController as! Color
        colorVC.variables = variables
    }
    

}
