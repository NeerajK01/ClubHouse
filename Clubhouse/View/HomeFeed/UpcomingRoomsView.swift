//
//  UpcomingRoomsView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 18/06/21.
//

import SwiftUI

struct UpcomingRoomsView: View {
    
    let upcomingRooms: [UpcomingRoom]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            ForEach(upcomingRooms){ room in
                GroupRoomView(upcomingRoom: room)
            }
        }
        .padding(.vertical, 15)
        .padding(.leading, 35)
        .padding(.trailing, 15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.customSecondaryBackground)
        .cornerRadius(18)
        .padding(.horizontal, 15)
    }
}

//MARK:- GroupRoomView
struct GroupRoomView: View {
    
    let upcomingRoom: UpcomingRoom
    
    var body: some View{
        HStack(alignment: .top, spacing: 10) {
            
            Text(upcomingRoom.date, style: .time)
                .font(Font.Nunito.semiBold(size: 10))
                .foregroundColor(Color.textYellow)
            
            VStack(alignment: .leading){
                if let groupName = upcomingRoom.groupName{
            
                    CurrentGroupView(groupName: groupName)
                    
                }
                
                Text(upcomingRoom.roomName)
                    .lineLimit(1)
                    .font(Font.Nunito.bold(size: 14))
                    .foregroundColor(Color.textBlack)
            
            }
            
        }
        
    }
}

//MARK:- CurrentGroupView
struct CurrentGroupView: View {
    let groupName: String
    var body: some View{
        HStack{
            Text(groupName.uppercased())
                .font(Font.Nunito.bold(size: 8))
                .foregroundColor(Color.textBlack)
            Image.home
                .font(Font.Nunito.bold(size: 10))
                .foregroundColor(Color.green)
        }
        .padding(.top, 1)
    }
}

struct UpcomingRoomsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GroupRoomView(upcomingRoom:
                            UpcomingRoom.dummyData[0])
                .previewLayout(.sizeThatFits)
            UpcomingRoomsView(upcomingRooms: UpcomingRoom.dummyData)
                .previewLayout(.sizeThatFits)
            
        }
    }
}
