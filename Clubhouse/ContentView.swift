//
//  ContentView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 19/06/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @EnvironmentObject var viewModel: RoomViewModel
    @State private var showProfile: Bool?
    @State private var isPresentingRoom = false
   
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                NavigationLink(destination: ProfileView(),
                               tag: true,
                               selection: $showProfile){
                    EmptyView()
                }
                VStack{
                    HomeHeaderView { action in
                        switch action{
                        case .profile:
                        showProfile = true
                        }
                    }
                    ScrollView{
                        LazyVStack(spacing: 16){
                            ForEach(FeedItem.dummyData){ feedItem in
                                switch feedItem.item {
                                
                                    case is UpcomingFeedItem:
                                        let upcomingFeedItem = feedItem.item  as! UpcomingFeedItem
                                        UpcomingRoomsView(upcomingRooms: upcomingFeedItem.upcoming)
                                        
                                    case is RoomFeedItem:
                                        let roomFeedItem = feedItem.item  as! RoomFeedItem
                                        RoomView(room: roomFeedItem.room)
                                            .onTapGesture{
                                                isPresentingRoom = true
                                                viewModel
                                                    .setActive(roomFeedItem.room)
                                        }
                                            .fullScreenCover(isPresented: $isPresentingRoom,
                                                             content: {
                                                ActiveRoomView()
                                                    .environmentObject(viewModel)
                                            })
                                    default:
                                        EmptyView()
                                }
                            }
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 150)
                    }
                }
                .padding(.top, 75)
                BottomHomeView()
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.background)
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
        .onAppear {
            showProfile = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RoomViewModel())
           
    }
}
