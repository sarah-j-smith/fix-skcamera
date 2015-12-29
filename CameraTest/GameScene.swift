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
        print("view: \(view.frame)")
        
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x: size.width / 2.0, y: size.height / 2.0)
        myLabel.name = "Label"
        
        self.addChild(myLabel)
    }
       
}
