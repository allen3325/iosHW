//
//  changeIcon.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/11/4.
//

import Foundation
import SwiftUI

struct changeIcon: View{
    var body: some View{
        HStack{
            CustomHeader1(name: "點選你想換的icon")
            Button (action:{
                UIApplication.shared.setAlternateIconName(nil)
            }) {
                Image("icon")
                    .resizable()
                    .scaledToFit()
            }

            Button (action:{
                UIApplication.shared.setAlternateIconName("icon2")
            }) {
                Image("icon2")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}
