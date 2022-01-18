//
//  ContentView.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2021/12/8.
//

import SwiftUI

// id = 76561198139846616

struct ContentView: View {
    @State var id = ""
    @State var haveData = false
    @State var fetchedData = false
    @State var update = ""
    @EnvironmentObject var settings: UserSettings
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(settings.bgcolor)
        .navigationTitle("主頁")
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
