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
    //Int Variables
    var taps = 0
    var distance = 0
    var milisecond = 0
    var second = 3
    var minute = 0
    //Timer Variables
    var timerOne = NSTimer()
    var timerTwo = NSTimer()
    //Node Variables
    let myDistance = SKLabelNode()
    let myTime = SKLabelNode()
    let mySpeed = SKLabelNode()
    var myCar = SKSpriteNode()
    //Specific Node Variables
    var myButton = SKSpriteNode(imageNamed: "button_tap")
    let mySpeedometer = SKSpriteNode(imageNamed: "speedometer")
    var road = SKSpriteNode(imageNamed: "road_1_singleplayer")
    var car1 = "car2_grey"
   
    override func didMoveToView(view: SKView) {
        //Distance label with features(to be deleted once do
        myDistance.text = "\(distance)"
        myDistance.fontName = "DBLCDTempBlack"
        myDistance.fontSize = 120
        myDistance.fontColor = UIColor.whiteColor()
        myDistance.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - 100)
        myDistance.zPosition = 1
        
        myTime.text = "\(second)"
        myTime.fontName = "DBLCDTempBlack"
        myTime.fontSize = 120
        myTime.fontColor = UIColor.whiteColor()
        myTime.position = CGPoint(x:CGRectGetMinX(self.frame) + 150, y:CGRectGetMidY(self.frame))
        myTime.zPosition = 1
        
        mySpeed.text = "\(taps)"
        mySpeed.fontName = "DBLCDTempBlack"
        mySpeed.fontSize = 115
        mySpeed.fontColor = UIColor.whiteColor()
        mySpeed.position = CGPoint(x:CGRectGetMaxX(self.frame) - 130, y:CGRectGetMinY(self.frame) + 180)
        mySpeed.zPosition = 1
        
        myCar = SKSpriteNode(imageNamed: car1)
        myCar.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 300)
        myCar.userInteractionEnabled = false
        
        mySpeedometer.position = CGPoint(x: CGRectGetMaxX(self.frame) - 140, y: CGRectGetMinY(self.frame) + 250)
        mySpeedometer.xScale *= 1.5
        mySpeedometer.yScale *= 1.5
        
        road.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        road.zPosition = -1
        road.size = self.frame.size
        
        myButton.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 70)
        myButton.name = "button"
        myButton.xScale *= 5
        myButton.yScale *= 3
        
        countdown()
        
        self.addChild(myButton)
        self.addChild(mySpeed)
        self.addChild(myTime)
        self.addChild(myDistance)
        self.addChild(myCar)
        self.addChild(mySpeedometer)
        self.addChild(road)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let positionInScene = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionInScene)
            
            if let name = touchedNode.name {
                if name == "button" {
                    ++taps
                    mySpeed.text = "\(taps)"
                    distance += taps * 2
                    myDistance.text = "\(distance)"
                    print("\(taps)")
                    print("\(distance)")
                }
            }
            
        }
    }
    func countdown() {
        timerOne = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "countdownAction", userInfo: nil, repeats: true)
    }
    func countdownAction() {
        second -= 1
        displayCountdown()
        switchToClock()
    }
    func switchToClock() {
        if second == 0 {
            timerOne.invalidate()
           myTime.text = "00:00.00"
            myTime.fontSize = 70
            newTimer()
        }
    }
    func newTimer() {
        timerOne = NSTimer.scheduledTimerWithTimeInterval(0.0017, target: self, selector: "timerAction", userInfo: nil, repeats: true)
    }
    func timerAction() {
        ++milisecond
        rollover()
        time()
        speedFormula()
    }
    func rollover() {
        if milisecond > 59
        {
            milisecond = 0
            second++
        }
        if second > 59
        {
            milisecond = 0
            second = 0
            minute++
        }
    }
    func speedFormula() {
        if second / 2 == 0{
            taps -= 1
        }
    }
        func time() {
            if minute < 10 && second < 10 && milisecond < 10
            {
                myTime.text = "0\(minute):0\(second).0\(milisecond)"
            }
            if minute < 10 && second < 10 && milisecond >= 10
            {
                myTime.text = "0\(minute):0\(second).\(milisecond)"
            }
            if minute < 10 && second >= 10 && milisecond < 10
            {
                myTime.text = "0\(minute):\(second).0\(milisecond)"
            }
            if minute >= 10 && second < 10 && milisecond < 10
            {
                myTime.text = "\(minute):0\(second).0\(milisecond)"
            }
            if minute < 10 && second >= 10 && milisecond >= 10
            {
                myTime.text = "0\(minute):\(second).\(milisecond)"
            }
            if minute >= 10 && second < 10 && milisecond >= 10
            {
                myTime.text = "\(minute):0\(second).\(milisecond)"
            }
            if minute >= 10 && second >= 10 && milisecond < 10
            {
                myTime.text = "\(minute):\(second).0\(milisecond)"
            }
        }
        
    func displayCountdown() {
        myTime.text = "\(second)"
    }
}
