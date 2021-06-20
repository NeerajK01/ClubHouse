//
//  ClubhouseApp.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 19/06/21.
//

import SwiftUI

@main
struct ClubhouseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(RoomViewModel())
        }
    }
}
