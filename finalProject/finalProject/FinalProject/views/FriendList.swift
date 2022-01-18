//
//  FriendList.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/12/1.
//

import Foundation
import SwiftUI

struct FriendList:View{
    var id:String
    //    @State var items = [getPlayerSummary.resultTwo.player]()
    @StateObject var friendListModel: FriendListModel
    @EnvironmentObject var settings: UserSettings
    @State private var searchText = ""
    
    init(id: String) {
        self.id = id
        _friendListModel = StateObject(wrappedValue: FriendListModel(id: id))
    }
    
    var body: some View{
        NavigationView{
            VStack{
                List{
                    ForEach(friendListModel.items, id: \.steamid){ item in
                        ItemRow(item: item)
                    }
                }
                .onAppear {
                    if friendListModel.items.isEmpty{
                        friendListModel.fetchFriendList(term: id)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(settings.bgcolor)
        //        .ignoresSafeArea()
        .refreshable {
            friendListModel.fetchFriendList(term: id)
        }
        .navigationBarBackButtonHidden(true)
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
}
