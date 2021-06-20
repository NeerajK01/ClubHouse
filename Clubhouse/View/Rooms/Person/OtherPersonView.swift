//
//  OtherPersonView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct OtherPersonView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            Group{
                ZStack(alignment: .top){
                    PersonImageView(image: person.img)
                        
                }
                HStack(spacing: 0){
                    Text(person.firstName)
                        .foregroundColor(Color.textBlack)
                        .font(Font.Nunito.extraBold(size: 13))
                        .lineLimit(1)
                        .padding(.leading, 5)
                        .minimumScaleFactor(0.8)
                }
            }
            .cornerRadius(25)
        }
        .overlay(NewView()
                    .offset(x: -20, y: 5)
                    .opacity(person.state.contains(.new) ? 1 : 0))
        
    }
}

struct OtherPersonView_Previews: PreviewProvider {
    static var previews: some View {
        OtherPersonView(person: FeedRoom.dummyData[0].hosts[0])
    }
}
