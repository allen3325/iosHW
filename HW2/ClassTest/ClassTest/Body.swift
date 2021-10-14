//
//  Body.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct BatmanBody: Shape{
    func path(in rect: CGRect) -> Path {
        Path { Body in
            Body.move(to: CGPoint(x: 117, y: 307))
            //Body.addLine(to: CGPoint(x: 272, y: 307))
            Body.addQuadCurve(to: CGPoint(x: 272, y: 307), control: CGPoint(x: 192, y: 341))
            Body.addQuadCurve(to: CGPoint(x: 248, y: 434), control: CGPoint(x: 263, y: 425))
            Body.addLine(to: CGPoint(x: 210, y: 434))
            Body.addQuadCurve(to: CGPoint(x: 191, y: 411), control: CGPoint(x: 202, y: 411))
            Body.addQuadCurve(to: CGPoint(x: 170, y: 435), control: CGPoint(x: 183, y: 426))
            Body.addLine(to: CGPoint(x: 135, y: 433))
            Body.addQuadCurve(to: CGPoint(x: 117, y: 307), control: CGPoint(x: 123, y: 404))
        }
    }
}
