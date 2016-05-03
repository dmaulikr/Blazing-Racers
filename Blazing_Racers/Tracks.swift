

import UIKit

class Tracks: UIViewController
{
    @IBOutlet weak var button_track1: UIButton!
    @IBOutlet weak var button_track2: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_track2.layer.cornerRadius = 10;
        button_track1.layer.cornerRadius = 10;
        
        button_track2.alpha = 0
        button_track1.alpha = 0
}
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        view.addSubview(button_track2)
        view.addSubview(button_track1)
        UIView.animateWithDuration(0.6, animations:
            {
                self.button_track1.alpha = 1
        })
        UIView.animateWithDuration(0.9, animations:
            {
                self.button_track2.alpha = 1
        })
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tracks3ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func tracks4ButtonTapped(sender: AnyObject)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let gameVC = segue.destinationViewController as! GameViewController
        gameVC.variables = variables
    }
}
