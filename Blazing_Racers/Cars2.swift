

import UIKit

class Cars2: UIViewController
{
    @IBOutlet weak var button_carset1: UIButton!
    @IBOutlet weak var button_carset2: UIButton!
    @IBOutlet weak var button_carset3: UIButton!
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
        button_carset1.backgroundColor = UIColor(patternImage:UIImage(named:"car1_grey")!)
        button_carset2.backgroundColor = UIColor(patternImage:UIImage(named:"car1_grey")!)
        button_carset3.backgroundColor = UIColor(patternImage:UIImage(named:"car1_grey")!)
        button_carset4.backgroundColor = UIColor(patternImage:UIImage(named:"car1_grey")!)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func car5ButtonTapped(sender: AnyObject)
    {
        variables.car = "car1_grey"
    }
   
    @IBAction func car6ButtonTapped(sender: AnyObject)
    {
        variables.car = "car2_grey"
    }
    
    @IBAction func car7ButtonTapped(sender: AnyObject)
    {
        variables.car = "car3_grey"
    }
    
    @IBAction func car8Segue(sender: AnyObject)
    {
        variables.car = "car4_grey"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let colorTwoVC = segue.destinationViewController as! Color2
        colorTwoVC.variables = variables
    }


}
