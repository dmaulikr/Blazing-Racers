//
//  GameScene.swift
//  Blazing_Racers
//
//  Created by nmalin-jones on 3/29/16.
//  Copyright (c) 2016 nmalin-balsamo-mexican-Stark. All memes reserved.



import SpriteKit
import Metal

//No Pushing or Pulling, except for Jose, he can pull and push anytime 😉😉😉😉
class GameScene: SKScene, SKPhysicsContactDelegate
{
    let playerSpeed: CGFloat = 150.0
    let zombieSpeed: CGFloat = 75.0
    
    var goal: SKSpriteNode?
    var player: SKSpriteNode?
    var zombies: [SKSpriteNode] = []
    
    var lastTouch: CGPoint? = nil

    override func didMoveToView(view: SKView)
    {
        physicsWorld.contactDelegate = self
    }


override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
{
    handleTouches(touches)
}

override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
{
    handleTouches(touches)
}

override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
{
    handleTouches(touches)
}

private func handleTouches(touches: Set<UITouch>)
{
    for touch in touches
    {
        let touchLocation = touch.locationInNode(self)
        lastTouch = touchLocation
    }
}
}
