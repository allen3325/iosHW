//
//  ContentView.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import SwiftUI

struct ContentView: View {
    @State var id = ""
    @State var ok = false
    var body: some View {
        TabView{
           HomePage(id: $id,ok: $ok)
            .tabItem{
                Image(systemName: "house.circle")
                Text("介紹")
            }
            Profile(id: $id,ok: $ok)
            .tabItem {
                Image(systemName: "info.circle")
                Text("個人主頁")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
