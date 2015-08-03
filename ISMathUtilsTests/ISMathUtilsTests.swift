//
//  ISMathUtilsTests.swift
//  ISMathUtilsTests
//
//  Created by James Thompson on 7/30/15.
//  Copyright (c) 2015 IntelligentSprite. All rights reserved.
//

import UIKit
import XCTest
import ISMathUtils

class ISMathUtilsTests: XCTestCase
{
    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    func testCGPointAdd()
    {
        let A = CGPointUnit
        let B = CGPointUnit
        
        let C = A + B
        
        XCTAssertEqual(C.x, 2.0, "C.x should be 2.0")
        XCTAssertEqual(C.y, 2.0, "C.y should be 2.0")
    }
    
    func testCGPointSub()
    {
        let A = CGPointUnit
        let B = CGPointUnit
        
        let C = A - B
        
        XCTAssertEqual(C.x, 0.0, "C.x should be 0.0")
        XCTAssertEqual(C.y, 0.0, "C.y should be 0.0")
    }
    
    func testCGPointScale()
    {
        let A = CGPointUnit
        let S:CGFloat = 2.0
        
        let C = A * S
        
        XCTAssertEqual(C.x, 2.0, "C.x should be 2.0")
        XCTAssertEqual(C.y, 2.0, "C.y should be 2.0")
    }
    
    func testCGPointDivideByScalar()
    {
        let A = CGPointMake(4.0, 4.0)
        let S:CGFloat = 2.0
        
        let C = A / S
        
        XCTAssertEqual(C.x, 2.0, "C.x should be 2.0")
        XCTAssertEqual(C.y, 2.0, "C.y should be 2.0")
    }
    
    func testCGPointDotProduct()
    {
        let A = CGPointUnit
        let B = CGPointUnit
        
        let C = A.dot(B)
        
        XCTAssertEqual(C, 2.0, "C should be 2.0")
    }
    
    func testCGPointNormalize()
    {
        let A = CGPointMake(50, 60)
        
        let B = A.normalize()
        
        XCTAssertLessThanOrEqual(B.x, 1.0, "B.x should be <= 1.0")
        XCTAssertLessThanOrEqual(B.y, 1.0, "B.y should be <= 1.0")
    }
    
    func testCGPointLength()
    {
        let A = CGPointMake(2.0, 0)
        
        let B = A.length()
        
        XCTAssertEqual(B, 2.0, "B should be 2.0")
        
        let C = CGPointMake(0.0, 2.0)
        
        let D = C.length()
        
        XCTAssertEqual(D, 2.0, "C should be 2.0")
    }
}
