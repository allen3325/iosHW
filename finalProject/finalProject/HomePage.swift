//
//  HomePage.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import Foundation
import SwiftUI

struct HomePage: View{
    @Binding var id: String
    @Binding var ok:Bool
    @State var update = ""
    var body: some View{
        VStack {
            Text("請輸入您的steam ID")
                .padding()
                .scaledToFit()
            Text(update)
                .padding()
                .scaledToFit()
            Form {
                TextField("First name", text: $id)
                Button {
                    ok = true
                    update = "已載入您的steam資料"
                } label: {
                    Label("送出", systemImage:"arrow.right.circle.fill")
                }
            }
            .padding()
            .scaledToFit()
        }
    }
}

