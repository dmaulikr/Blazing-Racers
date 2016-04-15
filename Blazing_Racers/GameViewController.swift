//
//  GameViewController.swift
//  Blazing_Racers
//
//  Created by nmalin-jones on 3/29/16.
//  Copyright (c) 2016 nmalin-jones. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    @IBOutlet var myGameView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = SplitScreen(fileNamed: "GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            myGameView.backgroundColor = UIColor(patternImage: UIImage(named: "road_singleplayer")!)
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
        }
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
