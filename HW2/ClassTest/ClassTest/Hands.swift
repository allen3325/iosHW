//
//  Hands.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Hands: Shape{
    func path(in rect: CGRect) -> Path {
        Path { Hand in
            Hand.move(to: CGPoint(x: 116, y: 307))
            Hand.addLine(to: CGPoint(x: 90, y: 332))
            Hand.addQuadCurve(to: CGPoint(x: 114, y: 391), control: CGPoint(x: 61, y: 373))
            //Hand.addLine(to: CGPoint(x: 107, y: 375))
            Hand.addQuadCurve(to: CGPoint(x: 107, y: 375), control: CGPoint(x: 113, y: 380))
            Hand.addLine(to: CGPoint(x: 98, y: 376))
            Hand.addQuadCurve(to: CGPoint(x: 112, y: 361), control: CGPoint(x: 78, y: 363))
            Hand.addLine(to: CGPoint(x: 116, y: 307))

        }
    }
    
    
}
