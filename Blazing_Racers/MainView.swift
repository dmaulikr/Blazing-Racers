

import UIKit

class MainViewViewController: UIViewController {
var variables = StoredVariables()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "main_title.png")!)

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
            singleVC.variables = variables
        } else if segue.identifier == "splitscreenSegue" {
            let splitVC = segue.destinationViewController as! SplitScreenView
            splitVC.variables = variables
        } else if segue.identifier == "multiPlayerSegue" {
            let multiVC = segue.destinationViewController as! MultiplayerView
            multiVC.variables = variables
        }
    }
}
