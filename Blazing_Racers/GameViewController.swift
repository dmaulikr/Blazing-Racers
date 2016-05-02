

import UIKit
import SpriteKit

class GameViewController: UIViewController
{

    @IBOutlet var myGameView: SKView!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
         if variables.timeTrial == true
        {
            if let scene = SinglePlayerTime(fileNamed: "GameScene")
            {
                // Configure the view.
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                print(variables.splitScreen.boolValue)
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                
                print("A")
                skView.presentScene(scene)
            }
        }
        else if variables.speedTest == true
        {
            if let scene = SinglePlayerRace(fileNamed: "GameScene")
            {
                // Configure the view.
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                print(variables.splitScreen.boolValue)
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                
                print("B")
                skView.presentScene(scene)
            }
        }
        else if variables.splitScreen == true
        {
        if let scene = SplitScreen(fileNamed: "GameScene")
        {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            print(variables.splitScreen.boolValue)
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            print("C")
            skView.presentScene(scene)
        }
        }
        else if variables.Bluetooth == true
        {
            if let scene = BluetoothMultiplayer(fileNamed: "GameScene")
            {
                // Configure the view.
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                print(variables.splitScreen.boolValue)
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                
                print("D")
                skView.presentScene(scene)
            }
        }
        }
    
    override func shouldAutorotate() -> Bool
    {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask
    {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone
        {
            return .AllButUpsideDown
        }
        else
        {
            return .All
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
}
