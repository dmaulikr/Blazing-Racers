//
//  SinglePlayerTime.swift
//  Blazing_Racers
//
//  Created by cstark on 4/11/16.
//  Copyright © 2016 nmalin-jones. All rights reserved.
//
import SpriteKit
import UIKit

class SinglePlayerTime: SKScene
{
    var taps = 0
    var time = 0
    var distance = 0
    let myTime = SKLabelNode()
    let myDistance = SKLabelNode()
    let mySpeed = SKLabelNode()
    var myCar = SKSpriteNode()
    
    override func didMoveToView(view: SKView)
    {
        myDistance.text = "\(distance)"
        myDistance.fontSize = 120
        myDistance.fontColor = UIColor.blackColor()
        myDistance.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - 100)
        
        myTime.text = "\(time)"
        myTime.fontSize = 120
        myTime.fontColor = UIColor.blackColor()
        myTime.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        mySpeed.text = "\(taps)"
        mySpeed.fontSize = 120
        mySpeed.fontColor = UIColor.blackColor()
        mySpeed.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMinY(self.frame) + 20)
        
        myCar = SKSpriteNode(imageNamed: "car2_special")
        
        self.addChild(mySpeed)
        self.addChild(myTime)
        self.addChild(myDistance)
        self.addChild(myCar)
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(myCar)
            print("touch")
            taps += 1
        }
    }
}


