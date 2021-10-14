//
//  Shadow.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Shadow: Shape{
    func path(in rect: CGRect) -> Path {
        Path { Shadow in
            Shadow.move(to: CGPoint(x: 130, y: 404))
            Shadow.addLine(to: CGPoint(x: 178, y: 404))
            Shadow.addLine(to: CGPoint(x: 170, y: 425))
            Shadow.addLine(to: CGPoint(x: 142, y: 425))
        }
    }
}
