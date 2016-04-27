

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

    }
    
    @IBAction func splitScreenButtonTapped(sender: UIButton)
    {

    }
    
    @IBAction func multiPlayerButtonTapped(sender: AnyObject)
    {

    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let singleVC = segue.destinationViewController as! SinglePlayerView
        let multiVC = segue.destinationViewController as! MultiplayerView
        let splitVC = segue.destinationViewController as! SplitScreenView
        if segue.identifier == "onePlayerSegue" {
            singleVC.dataToPass = "true"
            print(variables.singlePlayer.boolValue)
        } else if segue.identifier == "splitScreenSegue" {
            variables.splitScreen = true
            print(variables.splitScreen.boolValue)
        } else if segue.identifier == "multiPlayerSegue" {
            variables.Bluetooth = true
            print(variables.Bluetooth.boolValue)
        }
    }
}
