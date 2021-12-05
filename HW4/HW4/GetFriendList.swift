//
//  GetFriendList.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/12/1.
//

import Foundation

struct getFriendList:Decodable{
    let friendslist:result
    
    struct result:Decodable{
        let friends:[friend]
        
        struct friend:Decodable{
            let steamid:String
            let relationship:String
            let friend_since:Date
        }
    }
}
