

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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func car5ButtonTapped(sender: AnyObject)
    {
        
    }
   
    @IBAction func car6ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func car7ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func car8Segue(sender: AnyObject)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let colorTwoVC = segue.destinationViewController as! Color2
        colorTwoVC.variables = variables
    }


}
