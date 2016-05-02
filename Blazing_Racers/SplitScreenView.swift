

import UIKit

class SplitScreenView: UIViewController
{
var variables = StoredVariables()
    @IBOutlet weak var button_splitscreen: UIButton!
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_splitscreen.layer.cornerRadius = 10;

        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button_SplitScreen(sender: UIButton)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "sSRSegue"
        {
            let carsVC = segue.destinationViewController as! Cars
            carsVC.variables = variables
            
        }
    }
}
