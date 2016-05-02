

import UIKit

class Color: UIViewController
{
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_special: UIButton!
    
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
        
        //do if statements to see what the car value is equal to
        //run loops that set the car equal to colors
        //set the car equal to the color
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func color7ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color8ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color9ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color10ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color11ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color12ButtonTapped(sender: AnyObject)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let tracksVC = segue.destinationViewController as! Tracks
        tracksVC.variables = variables
    }

    
}
