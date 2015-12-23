//
//  GameScene.swift
//  CameraTest
//
//  Created by Sarah Smith on 12/23/15.
//  Copyright (c) 2015 Smithsoft Pty Ltd. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView)
    {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = midpoint
        myLabel.name = "Label"
        
        self.addChild(myLabel)
    }
       
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let label = childNodeWithName("Label") as! SKLabelNode
        label.fontColor = SKColor.redColor()
        label.text = "Fixing camera now!"

        let correctCameraPos = CGPoint(x: midpoint.x - displayedRect.origin.x, y: midpoint.y)
        camera?.runAction(SKAction.moveTo(correctCameraPos, duration: 0.8))
        
    }
}
