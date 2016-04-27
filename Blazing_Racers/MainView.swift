

import UIKit

class MainViewViewController: UIViewController {
var variables = StoredVariables()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func onePlayerButtonTapped(sender: UIButton)
    {
variables.singlePlayer = true

    }
    
    @IBAction func splitScreenButtonTapped(sender: UIButton)
    {
variables.splitScreen = true
    }
    
    @IBAction func multiPlayerButtonTapped(sender: AnyObject)
    {
variables.Bluetooth = true
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "singlePlayerSegue" {
            let singleVC = segue.destinationViewController as! SinglePlayerView
            singleVC.dataToPass = variables
        } else if segue.identifier == "splitscreenSegue" {
            let multiVC = segue.destinationViewController as! MultiplayerView
        } else if segue.identifier == "multiPlayerSegue" {
            let splitVC = segue.destinationViewController as! SplitScreenView
            
        }
    }
}
