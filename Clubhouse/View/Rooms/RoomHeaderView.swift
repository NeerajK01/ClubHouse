//
//  RoomHeaderView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct RoomHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            Label("All rooms", systemImage: "chevron.down")
            Spacer()
            Image
                .document
                .font(Font.Nunito.bold(size: 24))
            Image
                .profile_pic
                .resizable()
                .frame(width: 32, height: 32)
                .cornerRadius(11)
        }
        .foregroundColor(Color.textBlack)
        .frame(maxWidth: .infinity,
               alignment:.center)
        .padding(.horizontal, 15)
    }
}

struct RoomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RoomHeaderView()
    }
}
