

import UIKit
import SpriteKit

class SplitScreen: SKScene
{
    
    //Creates a variable of the GameViewController
    var gameViewController = GameViewController()
    
    //Int Variables
    var taps = 0
    var tapsTwo = 0
    var count = 3
    var distance = 0
    var distanceTwo = 0
    var milisecond = 0
    var second = 0
    var minute = 0
    
    //Timer Variables
    var timerOne = NSTimer()
    var timerTwo = NSTimer()
    var timerDecrease = NSTimer()
    var timerPartTwo = NSTimer()
    var timerDecreaseTwo = NSTimer()
    
    //Node Variables
    let myDistance = SKLabelNode()
    let myTime = SKLabelNode()
    let myTimeTwo = SKLabelNode()
    let mySpeed = SKLabelNode()
    let mySpeedTwo = SKLabelNode()
    var myCar = SKSpriteNode()
    var myCarTwo = SKSpriteNode()
    var road = SKSpriteNode()
    
    //Specific Node Variables
    var myButton = SKSpriteNode(imageNamed: "button_tap")
    var myButtonTwo = SKSpriteNode(imageNamed: "button_tap")
    let mySpeedometer = SKSpriteNode(imageNamed: "speedometer")
    let mySpeedometerTwo = SKSpriteNode(imageNamed: "speedometer")
    
    //SKActions
    var moveUp = SKAction.moveByX(0, y: 35, duration: 1)
    var moveDown = SKAction.moveByX(0, y: -40, duration: 1)
    var moveAway = SKAction.moveByX(0, y: 30, duration: 1)
    var backInBounds = SKAction.moveByX(0, y: -30, duration: 1)
    var backInPosition = SKAction.moveToY(300, duration: 8)
    //Opposite SKActions 
    var moveUpTwo = SKAction.moveByX(0, y: -35, duration: 1)
    var moveDownTwo = SKAction.moveByX(0, y: 40, duration: 1)
    var moveAwayTwo = SKAction.moveByX(0, y: -30, duration: 1)
    var backInBoundTwo = SKAction.moveByX(0, y: 30, duration: 1)
    var backInPositionTwo = SKAction.moveToY(900, duration: 8)
    
    override func didMoveToView(view: SKView)
    {

        
        //This is what keeps track on the time
        myTime.text = "\(count)"
        //Changes the font to look digital
        myTime.fontName = "DBLCDTempBlack"
        myTime.fontSize = 90
        myTime.fontColor = UIColor.whiteColor()
        //sets up the postion
        myTime.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame) - 40)
        //sends it to the front
        myTime.zPosition = 1
        
        //This is what keeps track on the time
        myTimeTwo.text = "\(count)"
        //Changes the font to look digital
        myTimeTwo.fontName = "DBLCDTempBlack"
        myTimeTwo.fontSize = 90
        myTimeTwo.fontColor = UIColor.whiteColor()
        myTimeTwo.zRotation = CGFloat(M_PI);
        //sets up the postion
        myTimeTwo.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame) + 160)
        //sends it to the front
        myTimeTwo.zPosition = 1
        
        //This is what keeps track of your speed
        mySpeed.text = "\(taps)"
        //Changes the font to look digital
        mySpeed.fontName = "DBLCDTempBlack"
        mySpeed.fontSize = 90
        mySpeed.fontColor = UIColor.whiteColor()
        //sets up the postion
        mySpeed.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMinY(self.frame) + 110)
        //sends it to the front
        mySpeed.zPosition = 1
        
        //This is what keeps track of your speed
        mySpeedTwo.text = "\(tapsTwo)"
        //Changes the font to look digital
        mySpeedTwo.fontName = "DBLCDTempBlack"
        mySpeedTwo.fontSize = 90
        mySpeedTwo.fontColor = UIColor.whiteColor()
        mySpeedTwo.zRotation = CGFloat(M_PI);
        //sets up the postion
        mySpeedTwo.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - 110)
        //sends it to the front
        mySpeedTwo.zPosition = 1
        
        //This is the car that is in the scene
        //This give the SpriteNode an image
        myCar = SKSpriteNode(imageNamed: gameViewController.variables.colors)
        //sets up the postion
        myCar.position = CGPoint(x: CGRectGetMidX(self.frame) + 250, y: CGRectGetMinY(self.frame) + 300)
        
        //This is the car that is in the scene
        //This give the SpriteNode an image
        myCarTwo = SKSpriteNode(imageNamed: gameViewController.variables.colors)
        //sets up the postion
        myCarTwo.position = CGPoint(x: CGRectGetMidX(self.frame) - 250, y: CGRectGetMaxY(self.frame) - 300)
        myCarTwo.zRotation = CGFloat(M_PI);
        
        //The image where the speed label goes in
        //sets up the postion
        mySpeedometerTwo.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMaxY(self.frame) - 160)
        //Resizes the Speedometer
        mySpeedometerTwo.xScale /= 0.97
        mySpeedometerTwo.yScale /= 0.97
        mySpeedometerTwo.zRotation = CGFloat(M_PI);
        
        //The image where the speed label goes in
        //sets up the postion
        mySpeedometer.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 160)
        //Resizes the Speedometer
        mySpeedometer.xScale /= 0.97
        mySpeedometer.yScale /= 0.97
        
        //This is the whole background of the game
        road = SKSpriteNode(imageNamed: gameViewController.variables.track)
        //sets up the postion
        road.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        //sends it to the very back
        road.zPosition = -1
        //sets the size to the whole view
        road.size = self.frame.size
        
        //this is the button that you tap to move the car
        //sets up the postion
        myButton.position = CGPoint(x: CGRectGetMidX(self.frame) + 270, y: CGRectGetMinY(self.frame) + 45)
        //used to identify if the sprite has been tapped
        myButton.name = "button"
        //scales the button to fit the screen
        myButton.xScale *= 2
        myButton.yScale *= 2
        //sends it to the very front
        myButton.zPosition = 2
        
        //this is the button that you tap to move the car
        //sets up the postion
        myButtonTwo.position = CGPoint(x: CGRectGetMidX(self.frame) - 270, y: CGRectGetMaxY(self.frame) - 45)
        //used to identify if the sprite has been tapped
        myButtonTwo.name = "buttonTwo"
        //scales the button to fit the screen
        myButtonTwo.xScale *= 2
        myButtonTwo.yScale *= 2
        //sends it to the very front
        myButtonTwo.zPosition = 2
        myButtonTwo.zRotation = CGFloat(M_PI);
        
        //The timers for the game
        countdown()
        
        
        
        //Adds all the sprites above into the game scene
        self.addChild(myButton)
        self.addChild(myButtonTwo)
        self.addChild(mySpeed)
        self.addChild(mySpeedTwo)
        self.addChild(myTime)
        self.addChild(myTimeTwo)
        self.addChild(myCar)
        self.addChild(myCarTwo)
        self.addChild(mySpeedometer)
        self.addChild(mySpeedometerTwo)
        self.addChild(road)
        
    }

    //When you touch it runs this line of code to see if the button was touched
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        //loops the UItouch
        for touch in touches
        {
            //detects where the touch is in the scene
            let positionInScene = touch.locationInNode(self)
            //it checks for the node that was touched
            let touchedNode = self.nodeAtPoint(positionInScene)
            if count == 0 {
            //sets the variable to the name of the touched node
            if let name = touchedNode.name
            {
                //checks to see if it is the same as the button
                if name == "button"
                {
                    if distance <= 20000 {
                    //increases the speed
                    taps += 2
                    //sets the speed equal to the label
                    mySpeed.text = "\(taps)"
                    //sets the distance that monitors how far you go
                    distance += taps * 2
                    myCar.runAction(moveUp)
                    print("\(taps)")
                    print("\(distance)")
                    }
                    else if distance >= 20000 {
                        timerOne.invalidate()
                        timerDecrease.invalidate()
                        myCar.runAction(backInPosition)
                    }
                }
                else if name == "buttonTwo" {
                    if distanceTwo <= 20000 {
                        //increases the speed
                        tapsTwo += 2
                        //sets the speed equal to the label
                        mySpeedTwo.text = "\(taps)"
                        //sets the distance that monitors how far you go
                        distanceTwo += taps * 2
                        myCar.runAction(moveUpTwo)
                        print("\(taps)")
                        print("\(distance)")
                    }
                    else if distanceTwo >= 20000 {
                        timerPartTwo.invalidate()
                        timerDecreaseTwo.invalidate()
                        myCar.runAction(backInPositionTwo)
                    }
                }
            }
            }
        }
    }

    
    //this is the timer that starts the game off
    func countdown()
    {
        timerOne = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "countdownAction", userInfo: nil, repeats: true)
    }
    
    //The action the timer tuns
    func countdownAction()
    {
        count -= 1
        displayCountdown()
        switchToClock()
    }
    
    //sets the label of the timer
    func displayCountdown()
    {
        myTime.text = "\(count)"
        myTimeTwo.text = "\(count)"
    }
    
    //this is what switches to the new timer after it finishes
    func switchToClock()
    {
        if count == 0 {
            timerOne.invalidate()
            myTime.text = "00:00.00"
            myTimeTwo.text = "00:00.00"
            myTime.fontSize = 40
            myTimeTwo.fontSize = 40
            newTimer()
        }
    }

    //Activates two timers that time you and decrease your speed
    func newTimer()
    {
     timerOne = NSTimer.scheduledTimerWithTimeInterval(0.0017, target: self, selector: "timerAction", userInfo: nil, repeats: true)
     timerDecrease = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "speedFormula", userInfo: nil, repeats: true)
     timerPartTwo = NSTimer.scheduledTimerWithTimeInterval(0.0017, target: self, selector: "timerActionTwo", userInfo: nil, repeats: true)
     timerDecreaseTwo = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "speedFormulaTwo", userInfo: nil, repeats: true)
        
    }
    
    //This is the function for the timer that monitors how long it is taking you
    func timerAction()
    {
        ++milisecond
        rollover()
        time()
        carCollidesButton()
    }
    
    func timerActionTwo() {
        ++milisecond
        rollover()
        timeTwo()
        carCollidesButtonTwo()
    }
    
    //This allows it to act like a digital clock
    func rollover()
    {
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
    
    //this is the label the switches the variables for the timer
        func time()
        {
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
    
    func timeTwo()
    {
        if minute < 10 && second < 10 && milisecond < 10
        {
            myTimeTwo.text = "0\(minute):0\(second).0\(milisecond)"
        }
        if minute < 10 && second < 10 && milisecond >= 10
        {
            myTimeTwo.text = "0\(minute):0\(second).\(milisecond)"
        }
        if minute < 10 && second >= 10 && milisecond < 10
        {
            myTimeTwo.text = "0\(minute):\(second).0\(milisecond)"
        }
        if minute >= 10 && second < 10 && milisecond < 10
        {
            myTimeTwo.text = "\(minute):0\(second).0\(milisecond)"
        }
        if minute < 10 && second >= 10 && milisecond >= 10
        {
            myTimeTwo.text = "0\(minute):\(second).\(milisecond)"
        }
        if minute >= 10 && second < 10 && milisecond >= 10
        {
            myTimeTwo.text = "\(minute):0\(second).\(milisecond)"
        }
        if minute >= 10 && second >= 10 && milisecond < 10
        {
            myTimeTwo.text = "\(minute):\(second).0\(milisecond)"
        }
    }
    
    
    // this is the function that decrease your speed
    func speedFormula()
    {
        mySpeed.text = "\(taps)"
        taps -= 2
       myCar.runAction(moveDown)
      
        if taps < 0
        {
            taps = 0
            mySpeed.text = "\(taps)"
        }
        else if taps > 0
        {
            mySpeed.text = "\(taps)"
        }
    }
    
    func speedFormulaTwo()
    {
        mySpeedTwo.text = "\(taps)"
        tapsTwo -= 2
        myCarTwo.runAction(moveDownTwo)
        
        if tapsTwo < 0
        {
            tapsTwo = 0
            mySpeedTwo.text = "\(tapsTwo)"
        }
        else if tapsTwo > 0
        {
            mySpeedTwo.text = "\(tapsTwo)"
        }
    }
    
    func carCollidesButton() {
        if myCar.position.y <= myButton.position.y {
            myCar.runAction(moveAway)
        } else if myCar.position.y >= road.position.y * 2 {
            myCar.runAction(backInBounds)
        }
    }
    
    func carCollidesButtonTwo() {
        if myCarTwo.position.y <= myButton.position.y {
            myCarTwo.runAction(moveAwayTwo)
        } else if myCarTwo.position.y >= road.position.y * 2 {
            myCarTwo.runAction(backInBoundTwo)
        }
    }
    
}
