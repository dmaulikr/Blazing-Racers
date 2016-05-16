
import SpriteKit
import UIKit

class SinglePlayerRace: SKScene
{
    //Creates a variable of the GameViewController
      var gameViewController = GameViewController()
// makes storiedvariables usable in this SKScene
    var variables = StoredVariables()
    //Int Variables
var taps = 0
var count = 3
var distance = 0
var milisecond = 0
var second = 10
//Timer Variables
    var timerOne = NSTimer()
    var timerTwo = NSTimer()
    var timerDecrease = NSTimer()
    //Node Variables
    let myDistance = SKLabelNode()
    let myTime = SKLabelNode()
    let mySpeed = SKLabelNode()
    var myCar = SKSpriteNode()
    var road = SKSpriteNode()
//Specific Node Variables
var myButton = SKSpriteNode(imageNamed: "button_tap")
let mySpeedometer = SKSpriteNode(imageNamed: "speedometer")
    //SKActions
    var moveUp = SKAction.moveByX(0, y: 35, duration: 1)
    var moveDown = SKAction.moveByX(0, y: -40, duration: 1)
    var moveAway = SKAction.moveByX(0, y: 30, duration: 1)
    var backInBounds = SKAction.moveByX(0, y: -30, duration: 1)
    var backInPosition = SKAction.moveToY(300, duration: 8)
    
    override func didMoveToView(view: SKView)
    {
            //This is what keeps track on the time
              myTime.text = "\(count)"
            //Changes the font to look digital
            myTime.fontName = "DBLCDTempBlack"
            myTime.fontSize = 120
            myTime.fontColor = UIColor.whiteColor()
            //sets up the postion
            myTime.position = CGPoint(x:CGRectGetMinX(self.frame) + 150, y:CGRectGetMidY(self.frame))
            //sends it to the front
            myTime.zPosition = 1
            //This is what keeps track of your speed
            mySpeed.text = "\(taps)"
            //Changes the font to look digital
            mySpeed.fontName = "DBLCDTempBlack"
            mySpeed.fontSize = 115
            mySpeed.fontColor = UIColor.whiteColor()
            //sets up the postion
            mySpeed.position = CGPoint(x:CGRectGetMaxX(self.frame) - 130, y:CGRectGetMinY(self.frame) + 180)
            //sends it to the front
            mySpeed.zPosition = 1
            //This is the car that is in the scene
            //This give the SpriteNode an image
            myCar = SKSpriteNode(imageNamed: gameViewController.variables.colors)
            //sets up the postion
            myCar.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 300)
            //The image where the speed label goes in
            //sets up the postion
            mySpeedometer.position = CGPoint(x: CGRectGetMaxX(self.frame) - 140, y: CGRectGetMinY(self.frame) + 250)
            //Resizes the Speedometer
            mySpeedometer.xScale *= 1.5
            mySpeedometer.yScale *= 1.5
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
            myButton.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMinY(self.frame) + 70)
            //used to identify if the sprite has been tapped
            myButton.name = "button"
            //scales the button to fit the screen
            myButton.xScale *= 5
            myButton.yScale *= 3
            //sends it to the very front
            myButton.zPosition = 2
    //The timers for the game
    countdown()
    //Adds all the sprites above into the game scene
    self.addChild(myButton)
    self.addChild(mySpeed)
    self.addChild(myTime)
    self.addChild(myDistance)
    self.addChild(myCar)
    self.addChild(mySpeedometer)
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
                        if count == 0
                        {
                        //sets the variable to the name of the touched node
                        if let name = touchedNode.name
                        {
                            //checks to see if it is the same as the button
                            if name == "button"
                            {
                            if second > 0 && milisecond >= 0
                            {
                                //increases the speed
                                taps += 2
                                //sets the speed equal to the label
                                mySpeed.text = "\(taps)"
                                //sets the distance that monitors how far you go
                                distance += taps * 2
                                //sets distance equal to the label
                                myDistance.text = "\(distance)"
                                myCar.runAction(moveUp)
                                            print("\(taps)")
                                            print("\(distance)")
        }
        else if second == 0 && milisecond == 0
        {
        timerDecrease.invalidate()
        myCar.runAction(backInPosition)
                                            
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
        }
    //this is what switches to the new timer after it finishes
        func switchToClock()
        {
          if count == 0
          {
            timerOne.invalidate()
            myTime.text = "00:00.00"
            myTime.fontSize = 70
            second = 10
            newTimer()
          }
        }
        //Activates two timers that time you and decrease your speed
        func newTimer()
        {
            timerOne = NSTimer.scheduledTimerWithTimeInterval(0.0017, target: self, selector: "timerAction", userInfo: nil, repeats: true)
            timerDecrease = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "speedFormula", userInfo: nil, repeats: true)
        }
    //This is the function for the timer that monitors how long it is taking you
        func timerAction()
        {
            --milisecond
            rollover()
            time()
            conditionToWin()
            carCollidesButton()
    }
//This allows it to act like a digital clock
       func rollover()
        {
        if milisecond < 0
        {
          milisecond = 60
          second--
        }
}
    //this is the label the switches the variables for the timer
    func time()
    {
        if second < 10 && milisecond < 10
        {
            myTime.text = "0\(second).0\(milisecond)"
        }
        if second < 10 && milisecond >= 10
        {
           myTime.text = "0\(second).\(milisecond)"
        }
            if second >= 10 && milisecond < 10
            {
             myTime.text = "\(second).0\(milisecond)"
            }
    if second >= 10 && milisecond >= 10
    {
    myTime.text = "\(second).\(milisecond)"
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
    func carCollidesButton()
       {
        if myCar.position.y <= myButton.position.y
        {
           myCar.runAction(moveAway)
        } else if myCar.position.y >= road.position.y * 2
          {
            myCar.runAction(backInBounds)
          }
}
//  way to win
 func conditionToWin()
  {
    if second <= 0 && milisecond <= 0
    {
       timerOne.invalidate()
    gameViewController.makeNavBarCome()
    }
  }
}