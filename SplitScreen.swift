//
//  SplitScreen.swift
//  Blazing_Racers
//
//  Created by nmalin-jones on 4/13/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//

import UIKit
import SpriteKit

class SplitScreen: SKScene {
    override func didMoveToView(view: SKView) {
        let myDistance = SKLabelNode(text: "Distance")
        myDistance.fontSize = 120
        myDistance.fontColor = UIColor.blackColor()
        myDistance.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - 100)
        let myTime = SKLabelNode(text: "Time")
        myTime.fontSize = 120
        myTime.fontColor = UIColor.blackColor()
        myTime.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        let mySpeed = SKLabelNode(text: "Speed")
        mySpeed.fontSize = 120
        mySpeed.fontColor = UIColor.blackColor()
        mySpeed.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMinY(self.frame) + 20)
        
        
        self.addChild(mySpeed)
        self.addChild(myTime)
        self.addChild(myDistance)
        
    }
}
