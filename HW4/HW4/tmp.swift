//
//  tmp.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/12/5.
//

import Foundation
import SwiftUI
import MapKit

struct tmp:View{
    @State private var gameTime = Date()
    @FocusState private var nameIsFocused: Bool
    @State private var name = ""
    let games = ["civilization VI", "APEX Legend", "skul", "Forza Horizon", "NBA 2K20", "Overcooked"]
    @State private var selectedIndex = 0
    @State private var scale: Double = 1
    @State private var message = "事情備忘錄"
    @State private var isGame = false
    @State private var wantGame = 50
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.152, longitude: 121.780), span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003))
    @State var bgColor = Color.white
    
    
    
    var body: some View{
        ScrollView {
            VStack{
                ColorPicker("設定背景顏色", selection: $bgColor)
                    .padding()
                    .scaledToFit()
                    .frame(width: 400, height: 100)
                Text("海大資工所在地")
                Map(coordinateRegion: $region)
                    .frame(width: 400, height: 300)
                    .scaledToFit()
                    .padding()
                
                Image(systemName: isGame ? "gamecontroller.fill" : "gamecontroller")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                Text(isGame ? "來玩遊戲吧" : "你不玩遊戲？")
                    .padding()
                Toggle(isOn: $isGame) {
                    Text("今天玩遊戲嗎?")
                }
                .padding()
                .scaledToFit()
                .frame(width: 400, height: 100)
                Stepper("你多想玩遊戲(大於60有驚喜)", value: $wantGame, in: 0...130)
                    .padding()
                    .scaledToFit()
                    .frame(width: 400, height: 100)
                Text("你想玩遊戲的程度 \(wantGame)")
                    .padding()
                
                Button("來看看可不可以玩遊戲") {
                    let randomGame = Bool.random()
                    if randomGame{
                        isGame=true
                        showAlert=true
                        alertTitle="可以玩遊戲"
                    }else{
                        isGame=false
                        showAlert=true
                        alertTitle="不可以玩遊戲"
                    }
                }
                .alert(alertTitle, isPresented: $showAlert, actions: {
                    Button("OK") { }
                })
            }
            
            if isGame || (wantGame > 60){
                VStack{
                    DatePicker("預約打遊戲的時間", selection: $gameTime)
                        .padding()
                    Text(gameTime.formatted(.dateTime.year().month()))
                    Image("image")
                        .clipShape(Circle())
                        .scaleEffect(scale)
                    Slider(value: $scale, in: 0...1)
                        .padding()
                    let scaleString = scale.formatted(.number.precision(.fractionLength(2)))
                    Text(scaleString)
                    Picker(selection: $selectedIndex) {
                        Text(games[0]).tag(0)
                        Text(games[1]).tag(1)
                        Text(games[2]).tag(2)
                        Text(games[3]).tag(3)
                        Text(games[4]).tag(4)
                        Text(games[5]).tag(5)
                    } label: {
                        Text("選擇遊戲")
                    }
                    .pickerStyle(.wheel)
                    .padding()
                    Text("今晚，我想來點\(games[selectedIndex])")
                    TextEditor(text: $message)
                        .frame(width: 200, height: 200)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct tmp_Previews: PreviewProvider {
    static var previews: some View {
        tmp()
    }
}
