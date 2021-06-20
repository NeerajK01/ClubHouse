//
//  UpcomingRoomModel.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 19/06/21.
//

import Foundation

struct UpcomingRoom: Identifiable {
    let id = UUID()
    let groupName: String?
    let roomName: String
    let date: Date
}

extension UpcomingRoom {
    
    static var dummyData: [UpcomingRoom] {
        [
            UpcomingRoom(groupName: "Tech Talks",
                              roomName: "iOS interview Questions 📝",
                              date: Date(timeIntervalSince1970: 1614527128)),
            UpcomingRoom(groupName: nil,
                              roomName: "Welcome to Clubhouse (Beginners Guide AMA) 🎉",
                              date: Date(timeIntervalSince1970: 1614541528)),
            UpcomingRoom(groupName: nil,
                              roomName: "Do you have Hoil? 👀",
                              date: Date(timeIntervalSince1970: 1614548728000))
        ]
    }
}
