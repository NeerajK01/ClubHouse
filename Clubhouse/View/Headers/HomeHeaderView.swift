//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 18/06/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
    enum HomeHeaderActions{
        case profile
    }
    
    typealias HomeHeaderActionHandler = (_ action: HomeHeaderActions) -> Void
    let handler: HomeHeaderActionHandler
    
    init(handler: @escaping HomeHeaderView.HomeHeaderActionHandler) {
        self.handler = handler
    }
    
    var body: some View {
        HStack(spacing: 20){
            Image.search
            Spacer()
            Image.invite
            Image.calendar
            Image.notificationBell
            Button(action: {
                handler(.profile)
            }, label: {
                Image.profile_pic
                    .resizable()
                    .frame(width: 32, height: 32)
                    .cornerRadius(10)
            })
        }
        .font(Font.Nunito.bold(size: 24))
        .frame(width: .infinity, height: 50)
        .padding(.horizontal, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView { _ in }
    }
}
