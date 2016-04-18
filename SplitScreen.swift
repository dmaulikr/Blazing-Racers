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
    var taps = 0
    var time = 0
    var distance = 0
    let myDistance = SKLabelNode()
    let myTime = SKLabelNode()
    let mySpeed = SKLabelNode()
    var myCar = SKSpriteNode()
    let mySpeedometer = SKSpriteNode(imageNamed: "speedometer")
    var myTestCar = SKSpriteNode(imageNamed: "car2_grey")
    var road = SKSpriteNode(imageNamed: "road_singleplayer")
    
    override func didMoveToView(view: SKView) {
        
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
    
        myCar = SKSpriteNode(imageNamed: "\(myTestCar)")
        myCar.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame) - 300)
        
        mySpeedometer.position = CGPoint(x: CGRectGetMaxX(self.frame) - 130, y: CGRectGetMinY(self.frame) + 120)
        
        road.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        
        
        self.addChild(mySpeed)
        self.addChild(myTime)
        self.addChild(myDistance)
        self.addChild(myCar)
        self.addChild(mySpeedometer)
        //self.addChild(road)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(myTestCar)
            print("touch")
            ++taps
        }
    }
}
