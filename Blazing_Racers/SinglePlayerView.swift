
import UIKit

class SinglePlayerView: UIViewController
{
    @IBOutlet weak var button_timetrial: UIButton!
    @IBOutlet weak var button_speedrace: UIButton!
    
    var variables = StoredVariables()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(variables.singlePlayer.boolValue)
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_timetrial.layer.cornerRadius = 10;
        button_speedrace.layer.cornerRadius = 10;

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func button_TimeTrial(sender: UIButton)
    {
        variables.timeTrial = true
        variables.speedTest = false
    }
    @IBAction func button_SpeedRace(sender: UIButton)
    {
        variables.timeTrial = false
        variables.speedTest = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let carsTwoVC = segue.destinationViewController as! Cars2
        carsTwoVC.variables = variables
    }


}
