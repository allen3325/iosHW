//
//  FriendList.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/12/1.
//

import Foundation
import SwiftUI

struct FriendList:View{
    @Binding var id:String
    @State var items = [getPlayerSummary.resultTwo.player]()
    
    var body: some View{
        NavigationView{
            List{
                ForEach(items, id: \.steamid){ item in
                    ItemRow(item: item)
                }
            }.onAppear {
                if items.isEmpty{
                    fetchFriendList(term: id)
                }
            }
        }
    }
    
    struct ItemRow: View {
        let item: getPlayerSummary.resultTwo.player
        var body: some View {
            VStack(alignment: .leading) {
                Text(item.personaname)
                    .bold()
                AsyncImage(url: item.avatarmedium)
            }
        }
    }
    
    func fetchFriendList(term: String) {
        let url = "http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key=DB926456846A627A74B8F558AA0F18F2&steamid=\(term)&relationship=friend"
        var idArr = [String]()
        if(term != "")
        {
            if let url = URL(string: url) {
                URLSession.shared.dataTask(with: url) { data, response , error in
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    if let data = data {
                        do {
                            let searchResponse = try decoder.decode(getFriendList.self, from: data)
                            for friend in searchResponse.friendslist.friends{
                                idArr.append(friend.steamid)
                            }
                            print(idArr)
                            for id in idArr{
                                let urlTwo = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=DB926456846A627A74B8F558AA0F18F2&steamids=\(id)"
                                if let urlTwo = URL(string: urlTwo) {
                                    URLSession.shared.dataTask(with: urlTwo) { data, response , error in
                                        let decoder = JSONDecoder()
                                        decoder.dateDecodingStrategy = .secondsSince1970
                                        if let data = data {
                                            do {
                                                let searchResponse = try decoder.decode(getPlayerSummary.self, from: data)
                                                if searchResponse.response.players.isEmpty {
                                                    //                                                    fetchedData = true
                                                    //                                                    haveData = false
                                                } else {
                                                    //                                                    fetchedData = true
                                                    //                                                    haveData = true
                                                    items.append(searchResponse.response.players[0])
                                                }
//                                                print(searchResponse.response.players[0].personaname)
                                            } catch {
                                                print(error)
                                            }
                                        } else {
                                            print("error")
                                        }
                                    }.resume()
                                }
                            }
                        } catch {
                            print(error)
                        }
                    } else {
                        print("error")
                    }
                }.resume()
            }
        }
    }
}
