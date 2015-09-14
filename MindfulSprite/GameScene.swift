//
//  GameScene.swift
//  MindfulSprite
//
//  Created by Jim Aven on 6/17/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import SpriteKit




class GameScene: SKScene {
    
    var start:CGPoint?
    var startTime:NSTimeInterval?
    var rotateRight:Bool = true
    
    var kMinDistance:CGFloat   = 25.0
    var kMinDuration:CGFloat   = 0.1
    var kMinSpeed:CGFloat      = 50.0
    var kMaxSpeed:CGFloat      = 1300.0
    
    var kDeceleration:CGFloat   = 1.0
    var kSpinnerSpeed:CGFloat     = 0.0
    
    let background = SKSpriteNode(imageNamed: "board-iphone")
    let spinner = SKSpriteNode(imageNamed: "spinner")
    
    var vc:UIViewController?
   
    //FIX: resize images in sketch
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        self.size = view.bounds.size
        
        
        
        // turn off gravity
        
        self.physicsWorld.gravity = CGVectorMake(0, 0)
        
        // add background
        
        background.size = CGSize(width: self.size.width, height: self.size.width/1.8)
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.blendMode = SKBlendMode.Replace
        
        self.addChild(background)
        
        // add spinner
        
        spinner.position = CGPoint(x: background.frame.width/4.6, y: background.frame.height/100)
        spinner.zPosition = 5
        spinner.physicsBody = SKPhysicsBody(texture: spinner.texture, size: spinner.size);
        spinner.physicsBody!.allowsRotation = true;
//        spinner.physicsBody?.pinned = true
        
        
//        spinner.physicsBody?.angularDamping = 0.1
                
        background.addChild(spinner)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        //avoid multi-touch gesture
        if(touches.count > 1){
            return;
        }
        
        if let touch:UITouch = touches.first as? UITouch{
            let location:CGPoint = touch.locationInView(self.view!)
            start = location
            startTime = touch.timestamp
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch:UITouch = touches.first as? UITouch{
            let location:CGPoint = touch.locationInView(self.view!)
            
            if(location.x > start!.x) {
                rotateRight = true
            } else {
                rotateRight = false
            }
            
            var dx:CGFloat = location.x - start!.x;
            var dy:CGFloat = location.y - start!.y;
            var magnitude:CGFloat = sqrt(dx*dx+dy*dy)
            
            if (magnitude >= kMinDistance) {
                // Determine time difference from start of the gesture
                var dt:CGFloat = CGFloat(touch.timestamp - startTime!)
                if (dt > kMinDuration) {
                    // Determine gesture speed in points/sec
                    var speed:CGFloat = magnitude / dt;
                    if (speed >= kMinSpeed /*&& speed <= kMaxSpeed*/) {
                        var fracSpeed = speed / (kMaxSpeed - kMinSpeed)
                        if(fracSpeed > 1) {fracSpeed = 1.0}
                        
                        kSpinnerSpeed = fracSpeed * 10;
                        self.view?.userInteractionEnabled = false;
                    }
                }
            }
        }
    }
    
    
    var lastUpdateTimeInterval: CFTimeInterval?
    override func update(currentTime: CFTimeInterval) {
        var delta: CFTimeInterval = currentTime // no reason to make it optional
        if let luti = lastUpdateTimeInterval {
            delta = currentTime - luti
        }
        
        lastUpdateTimeInterval = currentTime
        
        if (kSpinnerSpeed == 0.0) {
            return
        }
        
        var rotatedDistance = (CGFloat)(delta) * kSpinnerSpeed;
        
        if(rotateRight == true) {
            spinner.zRotation -= rotatedDistance;
        } else {
            spinner.zRotation += rotatedDistance;
        }
        
        
        kSpinnerSpeed = kSpinnerSpeed - ((CGFloat)(delta) * kDeceleration)
        if (kSpinnerSpeed <= 0.0) {
            kSpinnerSpeed = 0.0
            
            var section = finalSpinnerSection()
            
            
            var sect = section - 1
            globalGame = Int(sect)
            println("Sect is: \(sect)")
            
            
            
            println("Global game is: \(globalGame)")
            
            self.vc!.performSegueWithIdentifier("gameSegue", sender: self.vc)
            self.view?.userInteractionEnabled = true;
            self.view?.reloadInputViews()
            
        }
    }
    
    func convertRadiansToDegrees (radian:CGFloat) -> Double {
        
        var x = ceil(radian * 57.29577)
        
        return Double(x)
        
    }
    
    //spinner hleper to reset upon each spin
    
    func finalSpinnerSection () -> Int {
        
        var finalAngle = fabs(spinner.zRotation);
        let sectionAngle = M_PI/5
        var remainderAngle = (finalAngle % (CGFloat)(2*M_PI))
        
        var section = ceil(remainderAngle / (CGFloat)(sectionAngle))
        println("func section is: \(section)")
        return Int(section)
    }
    
}
