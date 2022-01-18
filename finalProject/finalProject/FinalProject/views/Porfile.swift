//
//  Porfile.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import Foundation
import SwiftUI

struct Profile: View{
    @Binding var id:String
    @State var items = [getPlayerSummary.resultTwo.player]()
    @Binding var haveData:Bool
    @Binding var fetchedData:Bool
    @State private var showAlert = false
    let controller = UIAlertController(title: "出現了些錯誤", message: "請檢查steamID是否正確", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    @EnvironmentObject var settings: UserSettings
    @State private var tapped = false
    
    
    func configureBackground() {
        let barAppearance = UITabBarAppearance()
        barAppearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = barAppearance
        UITabBar.appearance().scrollEdgeAppearance = barAppearance
    }
    
    
    var body: some View{
        VStack {
            Image("steam")
                .resizable()
                .scaledToFit()
                .gesture(
                    LongPressGesture(minimumDuration: 1.0)
                        .onEnded({ _ in
                            tapped.toggle()
                        })
                )
            TabView{
                List{
                    ForEach(items, id: \.steamid){ item in
                        ProfileShow(item: item)
                    }
                    if tapped {
                        VStack{
                            Image("peter")
                            Text("彼得潘好帥，該加分了")
                                .bold()
                        }
                    }
                }
                .animation(.linear(duration: 1))
                .onAppear {
                    if items.isEmpty{
                        fetchItems(term: id)
                    }
                }
                .tabItem {
                    Label("個人主頁", systemImage: "person.crop.circle.fill")
                }
                tmp()
                    .tabItem {
                        Label("選擇時間", systemImage: "clock.fill")
                    }
                Feature()
                    .tabItem{
                        Label("特色功能",systemImage: "sun.haze.fill")
                    }
                FriendList(id: id)
                    .tabItem {
                        Label("好友清單", systemImage: "person.crop.square.fill")
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear(perform: {
            configureBackground()
        })
        .background(settings.bgcolor)
        .alert(
            isPresented: $showAlert,
            content: { Alert(title: Text("請檢查steamID是否正確")) }
        )
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
    
    
    struct ProfileShow: View {
        let item: getPlayerSummary.resultTwo.player
        var body: some View {
            VStack(alignment: .leading) {
                Text(item.personaname)
                    .bold()
                AsyncImage(url: item.avatarmedium)
            }
        }
    }
    
    func fetchItems(term: String) {
        if(term != "")
        {
            print("term is \(term)")
            let urlStr = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=DB926456846A627A74B8F558AA0F18F2&steamids=\(term)"
            if let url = URL(string: urlStr) {
                URLSession.shared.dataTask(with: url) { data, response , error in
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    if let data = data {
                        do {
                            let searchResponse = try decoder.decode(getPlayerSummary.self,from: data)
                            if searchResponse.response.players.isEmpty {
                                print("a")
                                fetchedData = true
                                haveData = false
                                showAlert = true
                            } else {
                                print("b")
                                fetchedData = true
                                haveData = true
                                items = searchResponse.response.players
                            }
                        } catch {
                            print("c")
                            showAlert = true
                            print(error)
                        }
                    }
                }.resume()
            }
        }
    }
}
