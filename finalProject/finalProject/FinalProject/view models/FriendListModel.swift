//
//  FriendListModel.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2021/12/8.
//

import Foundation
import SwiftUI

class FriendListModel: ObservableObject{
    
    @Published var items = [getPlayerSummary.resultTwo.player]()
    
    init(id: String){
        fetchFriendList(term: id)
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
//                            print(idArr)
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
                                                    DispatchQueue.main.async {
                                                        self.items.append(searchResponse.response.players[0])
                                                    }
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
