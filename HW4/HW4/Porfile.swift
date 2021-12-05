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
    
    var body: some View{
        TabView{
            List{
                ForEach(items, id: \.steamid){ item in
                    ProfileShow(item: item)
                }
            }
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
            
            
            FriendList(id: $id)
                .tabItem {
                    Label("好友清單", systemImage: "person.crop.square.fill")
                }
        }
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
            let urlStr = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=DB926456846A627A74B8F558AA0F18F2&steamids=\(term)"
            if let url = URL(string: urlStr) {
                URLSession.shared.dataTask(with: url) { data, response , error in
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    if let data = data {
                        do {
                            let searchResponse = try decoder.decode(getPlayerSummary.self,from: data)
                            if searchResponse.response.players.isEmpty {
                                fetchedData = true
                                haveData = false
                            } else {
                                fetchedData = true
                                haveData = true
                                items = searchResponse.response.players
                            }
                        } catch {
                            print(error)
                        }
                    }
                }.resume()
            }
        }
    }
}
