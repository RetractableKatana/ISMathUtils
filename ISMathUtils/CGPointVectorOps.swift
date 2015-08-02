//
//  CGPointVectorOps.swift
//  Dot Wars
//
//  Created by James Thompson on 7/13/15.
//  Copyright (c) 2015 IntelligentSprite. All rights reserved.
//

import CoreGraphics.CGGeometry

public func + (left: CGPoint, right: CGPoint) -> CGPoint
{
    return CGPoint(x:left.x + right.x, y:left.y + right.y);
}

public func - (left: CGPoint, right: CGPoint) -> CGPoint
{
    return CGPoint(x: left.x - right.x, y: left.y - right.y);
}

public func * (left: CGPoint, right: CGFloat) -> CGPoint
{
    return CGPoint(x: left.x * right, y: left.y * right);
}

public func / (left: CGPoint, right: CGFloat) -> CGPoint
{
    return CGPoint(x: left.x / right, y: left.y / right);
}

public extension CGPoint
{
    public func length() -> CGFloat
    {
        return sqrt(x*x + y*y)
    }
    
    public func normalize() ->CGPoint
    {
        return self / length();
    }
}
