

import UIKit

class MainViewViewController: UIViewController
{
    
    @IBOutlet weak var button_oneplayerracing: UIButton!
    @IBOutlet weak var button_splitscreenracing: UIButton!
    @IBOutlet weak var button_bluetoothmultiplayer: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    

        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_title1.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        

        button_bluetoothmultiplayer.layer.cornerRadius = 10;
        button_splitscreenracing.layer.cornerRadius = 10;
        button_oneplayerracing.layer.cornerRadius = 10;
        
        button_oneplayerracing.alpha = 0
        button_bluetoothmultiplayer.alpha = 0
        button_splitscreenracing.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool)
    {
        
        super.viewDidAppear(animated)
        
        view.addSubview(button_oneplayerracing)
        view.addSubview(button_bluetoothmultiplayer)
        view.addSubview(button_splitscreenracing)
        
        UIView.animateWithDuration(1.8, animations:
            {
            self.button_splitscreenracing.alpha = 1.0
        })
        
        UIView.animateWithDuration(2, animations:
            {
            self.button_bluetoothmultiplayer.alpha = 1.0
        })
        
        UIView.animateWithDuration(1.5, animations:
            {
            self.button_oneplayerracing.alpha = 1.0
        })

    }
    
    //make the nav bar dissappear
    override func viewWillDisappear(animated: Bool)
    {
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
        super.viewWillDisappear(animated)
    }
    
    //make it come back after you leave the first page
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onePlayerButtonTapped(sender: UIButton)
    {
        variables.singlePlayer = true
        variables.timeTrial = false
        variables.speedTest = false
        variables.splitScreen = false
        variables.Bluetooth = false
    }
    
    @IBAction func splitScreenButtonTapped(sender: UIButton)
    {
        variables.splitScreen = true
        variables.singlePlayer = false
        variables.timeTrial = false
        variables.speedTest = false
        variables.Bluetooth = false
    }
    
    @IBAction func multiPlayerButtonTapped(sender: AnyObject)
    {
        variables.Bluetooth = true
         variables.singlePlayer = false
        variables.timeTrial = false
        variables.speedTest = false
        variables.splitScreen = false

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "singlePlayerSegue"
        {
            let singleVC = segue.destinationViewController as! SinglePlayerView
            singleVC.variables = variables
        }
        else if segue.identifier == "splitscreenSegue"
        {
            let splitVC = segue.destinationViewController as! SplitScreenView
            splitVC.variables = variables
        }
        else if segue.identifier == "multiPlayerSegue"
        {
            let multiVC = segue.destinationViewController as! MultiplayerView
            multiVC.variables = variables
        }
    }
}
