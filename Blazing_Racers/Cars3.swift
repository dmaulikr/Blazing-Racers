

import UIKit

class Cars3: UIViewController
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
        button_carset2.backgroundColor = UIColor(patternImage:UIImage(named:"car2_grey")!)
        button_carset3.backgroundColor = UIColor(patternImage:UIImage(named:"car3_grey")!)
        button_carset4.backgroundColor = UIColor(patternImage:UIImage(named:"car4_grey")!)
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

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    @IBAction func car9ButtonTapped(sender: AnyObject)
    {
        variables.car = "car1_grey"
    }
    @IBAction func car10ButtonTapped(sender: AnyObject)
    {
        variables.car = "car2_grey"
    }
    @IBAction func car11ButtonTapped(sender: AnyObject)
    {
        
    } 
    @IBAction func car12ButtonTapped(sender: AnyObject)
    {
        variables.car = "car4_grey"
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let colorThreeVC = segue.destinationViewController as! Color3
        colorThreeVC.variables = variables
    }
}
