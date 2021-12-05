//
//  ContentView.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import SwiftUI

// id = 76561198139846616

struct ContentView: View {
    @State var id = ""
    @State var haveData = false
    @State var fetchedData = false
    @State var update = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Text("請輸入您的steam ID")
                    .padding()
                    .scaledToFit()
                Text(update)
                    .padding()
                    .scaledToFit()
                Form {
                    TextField("First name", text: $id)
                    NavigationLink{
                        Profile(id: $id, haveData: $haveData, fetchedData: $fetchedData)
                    } label: {
                        Label("送出", systemImage:"arrow.right.circle.fill")
                    }
                }
                .padding()
                .scaledToFit()
            }
        }
        .navigationTitle("主頁")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
