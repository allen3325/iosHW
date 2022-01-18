//
//  UserSettings.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2022/1/5.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var setting = 0
    @Published var userRole = 0
    @Published var bgcolor = Color.white
}
