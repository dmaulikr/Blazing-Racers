

import UIKit

class MultiplayerView: UIViewController
{
    @IBOutlet var button_bluetooth: UIView!
    
var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
//       button_bluetooth.alpha = 0
    }
//    override func viewDidAppear(animated: Bool)
//    {
//        
//        super.viewDidAppear(animated)
//        
//        view.addSubview(button_bluetooth)
//        
//        UIView.animateWithDuration(1.8, animations:
//            {
//                self.button_bluetooth.alpha = 1
//        })
//    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button_BluetoothRacing(sender: UIButton)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let carsThreeVC = segue.destinationViewController as! Cars3
        carsThreeVC.variables = variables
        
    }


}
