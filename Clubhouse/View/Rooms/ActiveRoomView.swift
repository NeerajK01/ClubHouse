//
//  ActiveRoomView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct ActiveRoomView: View {
    
    @Environment(\.presentationMode) var presentaionMode: Binding<PresentationMode>
    @EnvironmentObject var viewModel: RoomViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                RoomHeaderView()
                    .padding(.bottom, 30)
                
                ScrollView{
                
                    HStack(alignment: .top){
                        Text(viewModel.activeRoom.roomName)
                            .padding(.leading, 25)
                        Spacer()
                        Image
                            .ellipsis
                            .padding(.top, 10)
                            .padding(.trailing, 25)
                    }
                    .padding(.top, 15)
                    .foregroundColor(Color.textBlack)
                    .font(Font.Nunito.bold(size: 20))
                    
                    HostView(people: viewModel.activeRoom.hosts)
                        .padding(.horizontal, 15)
                    
                    if !viewModel.activeRoom.followedBySpeaker.isEmpty{
                        OthersView(title: "Followed by the speakers",
                                   people: viewModel.activeRoom.followedBySpeaker)
                    }
                    
                    OthersView(title: "Others in the room",
                               people: viewModel.activeRoom.othersInRoom)
                }
                .padding(.bottom, 110)
                .background(Color.cardBackground)
                .cornerRadius(37)
                
                
            }
            .padding(.top, 65)
            
            ButtonRoomView { action in
                switch action {
                case .leave:
                    presentaionMode.wrappedValue.dismiss()
                }
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
        
    }
}

struct ActiveRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveRoomView()
            .environmentObject(RoomViewModel())
    }
}
