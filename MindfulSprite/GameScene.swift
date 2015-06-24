//
//  GameScene.swift
//  MindfulSprite
//
//  Created by Jim Aven on 6/17/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    var startingPoint:CGPoint!
    var startTime:NSTimeInterval!
    
    let kMinDistance:CGFloat    = 25
    let kMinDuration:CGFloat    = 0.1
    let kMinSpeed:CGFloat       = 100
    let kMaxSpeed:CGFloat       = 500
    
    let background = SKSpriteNode(imageNamed: "board")
    let spinner = SKSpriteNode(imageNamed: "spinner")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        self.size = view.bounds.size
        
        // turn off gravity
        
        self.physicsWorld.gravity = CGVectorMake(0, 0)
        
        // add background
        background.position = CGPointMake(view.bounds.width/2, view.bounds.height/2)
        background.size = CGSize(width: self.size.width, height: self.size.height)
        background.blendMode = SKBlendMode.Replace
        self.addChild(background)
        
        // add spinner
        spinner.position = CGPointMake(125,0)
        spinner.physicsBody = SKPhysicsBody(rectangleOfSize: spinner.size)
        spinner.size = (CGSize(width: 200, height: 15))
        spinner.physicsBody?.pinned = true
        spinner.physicsBody?.angularDamping = 1
        background.addChild(spinner)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
            var location = touch.locationInNode(self)
            self.startingPoint = location
            self.startTime = touch.timestamp
        }
    }
   
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
            var location = touch.locationInNode(self)
            var dx:CGFloat = location.x - self.startingPoint.x
            var dy:CGFloat = location.x - self.startingPoint.y
            var magnitude:CGFloat = sqrt(dx*dx+dy*dy)
            
            if magnitude >= kMinDistance {
                let dt:CGFloat = CGFloat(touch.timestamp - self.startTime)
                if dt > kMinDuration {
                    let speed:CGFloat = magnitude / dt
                    if speed >= kMinSpeed && speed <= kMaxSpeed {
                        dx = dx / magnitude
                        dy = dy / magnitude
                        println("swipe speed CGFloat:\(speed) and direction is \(dx, dy)")
                    }
                }
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
      
    }
    
    func handlePan(recognizer:UIPanGestureRecognizer) {
        
//        var location = recognizer.locationInView(self.view)
//            location = self.convertPointFromView(location)
//        
//        if recognizer.state == UIGestureRecognizerState.Began {
//            
//            let dx = location.x - spinner.position.x;
//            let dy = location.y - spinner.position.y;
//            // Save vector from node to touch location
//            startingPoint = CGPointMake(dx, dy)
//        }
//            
//        else if recognizer.state == UIGestureRecognizerState.Ended
//        {
//            var location = recognizer.locationInView(self.view)
//            location = self.convertPointFromView(location)
//            
//            var dx = location.x - spinner.position.x;
//            var dy = location.y - spinner.position.y;
//            
//            // Determine the direction to spin the node
//            let direction = CGFloat(startingPoint.x * dy - startingPoint.y * dx);
//            
//            dx = recognizer.velocityInView(self.view).x
//            dy = recognizer.velocityInView(self.view).y
//            
//            // Determine how fast to spin the node. Optionally, scale the speed
//            let speed = sqrt(dx*dx + dy*dy) * 0.5
//            
//            // Apply angular impulse
//            spinner.physicsBody?.applyAngularImpulse(speed * direction)
//        }
    }
    
}
