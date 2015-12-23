//
//  SKScene+Extensions.swift
//  WordMonsters
//
//  Created by Sarah Smith on 7/19/15.
//  Copyright (c) 2015 Sarah Smith. All rights reserved.
//

import Foundation
import SpriteKit

public extension SKScene
{
    public var midpoint: CGPoint {
        get {
            let sceneRect = displayedRect
            return CGPoint(x: sceneRect.origin.x + sceneRect.width/2, y: sceneRect.origin.y + sceneRect.height/2)
        }
    }
    
    var displayedRect : CGRect {
        get {
            // From the doc for .AspectFill:
            // The scaling factor of each dimension is calculated and the larger of the
            // two is chosen. Each axis of the scene is scaled by the same scaling 
            // factor. This guarantees that the entire area of the view is filled but 
            // may cause parts of the scene to be cropped.
            //
            // Game scene has a frame in portrait 768w x 1024h in game pixels,
            // with .AspectFill so on devices with different aspect some of the
            // scene will be cropped off on each side.
            //
            // We calculate here the portion of the scene that is on screen, in the 
            // game pixels/co-ordinates.
            let parentView = view!
            let viewSize = parentView.frame.size
            let yScale = viewSize.height / size.height
            let xScale = viewSize.width / size.width
            let viewScale = max(yScale, xScale)
            
            let displayedWidth = viewSize.width / viewScale
            let displayedHeight = viewSize.height / viewScale
            
            var xMargin = (size.width - displayedWidth) / 2
            var yMargin = (size.height - displayedHeight) / 2
            if fabs(xMargin) < 0.0001
            {
                xMargin = 0.0
            }
            else if fabs(yMargin) < 0.0001
            {
                yMargin = 0.0
            }
            return CGRect(x: xMargin, y: yMargin, width: displayedWidth, height: displayedHeight)
        }
    }
}