

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
        
        print(variables.car)
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_black.layer.cornerRadius = 10;
        button_blue.layer.cornerRadius = 10;
        button_grey.layer.cornerRadius = 10;
        button_purple.layer.cornerRadius = 10;
        button_pink.layer.cornerRadius = 10;
        button_orange.layer.cornerRadius = 10;
        button_special.layer.cornerRadius = 10;
        
        if variables.car == "car1_grey" {
            button_black.backgroundColor = UIColor(patternImage: UIImage(named: "car1_black")!)
            
        }
        else if variables.car == "car1_grey" {
            
        }
    
    }
    
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func color7ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey" {
            variables.colors = "car1_black"
        } else if variables.car == "car2_grey" {
            variables.colors = "car2_black"
        }
    }
    
    @IBAction func color8ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_blue"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_blue"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_blue"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_blue"
        }
   
    }
    
    @IBAction func color9ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_grey"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_grey"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_grey"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_grey"
        }
   
    }
    
    @IBAction func color10ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_orange"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_orange"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_orange"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_orange"
        }

    }
    
    @IBAction func color11ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_pink"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_pink"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_pink"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_pink"
        }

    }
    
    @IBAction func color12ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_purple"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_purple"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_purple"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_purple"
        }

    }
    @IBAction func color13ButtonTapped(sender: AnyObject)
    {
        if variables.car == "car1_grey"
        {
            variables.colors = "car1_special"
        }
        else if variables.colors == "car2_grey"
        {
            variables.colors = "car2_special"
        }
        else if variables.colors == "car3_grey"
        {
            variables.colors = "car3_special"
        }
        else if variables.colors == "car4_grey"
        {
            variables.colors = "car4_special"
        }

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let tracksVC = segue.destinationViewController as! Tracks
        tracksVC.variables = variables
    }

    
}
