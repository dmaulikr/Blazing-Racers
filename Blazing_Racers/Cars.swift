

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
        // Do any additional setup after loading the view.

        
        //Run it in a loop so all for cars get into a button
        //set the car variable equal to the button you pressed

//        button_carset2.backgroundColor = UIColor(patternImage: UIImage(named: "car2_grey")!)

    }
    
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
