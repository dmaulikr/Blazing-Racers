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
    var taps = 120
    var time = 0
    var distance = 0
    let myDistance = SKLabelNode()
    let myTime = SKLabelNode()
    let mySpeed = SKLabelNode()
    var myCar = SKSpriteNode()
    let mySpeedometer = SKSpriteNode(imageNamed: "speedometer")
    var road = SKSpriteNode(imageNamed: "road_singleplayer")
    var car1 = "car2_grey"
    override func didMoveToView(view: SKView) {
        
        myDistance.text = "\(distance)"
        myDistance.fontName = "DBLCDTempBlack"
        myDistance.fontSize = 120
        myDistance.fontColor = UIColor.whiteColor()
        myDistance.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - 100)
        myDistance.zPosition = 1
        
        myTime.text = "\(time)"
        myTime.fontName = "DBLCDTempBlack"
        myTime.fontSize = 120
        myTime.fontColor = UIColor.whiteColor()
        myTime.position = CGPoint(x:CGRectGetMinX(self.frame) + 140, y:CGRectGetMidY(self.frame))
        myTime.zPosition = 1
        
        mySpeed.text = "\(taps)"
        mySpeed.fontName = "DBLCDTempBlack"
        mySpeed.fontSize = 115
        mySpeed.fontColor = UIColor.whiteColor()
        mySpeed.position = CGPoint(x:CGRectGetMaxX(self.frame) - 130, y:CGRectGetMinY(self.frame) + 50)
        mySpeed.zPosition = 1
        
        myCar = SKSpriteNode(imageNamed: car1)
        myCar.name = "myCar"
        myCar.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 300)
        myCar.userInteractionEnabled = false
        
        mySpeedometer.position = CGPoint(x: CGRectGetMaxX(self.frame) - 140, y: CGRectGetMinY(self.frame) + 120)
        mySpeedometer.xScale *= 1.5
        mySpeedometer.yScale *= 1.5
        
        road.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        road.zPosition = -1
        road.size = self.frame.size
            
        self.addChild(mySpeed)
        self.addChild(myTime)
        self.addChild(myDistance)
        self.addChild(myCar)
        self.addChild(mySpeedometer)
        self.addChild(road)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location)
            if let name = touchedNode.name {
                if name == "\(myCar.name)" {
                    print("tapped")
                    ++taps
                }
            }
            
        }
    }
}
