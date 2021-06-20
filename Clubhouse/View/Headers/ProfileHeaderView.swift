//
//  ProfileHeaderView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 19/06/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    enum ProfileHeaderActions{
        case back
    }
    
    typealias ProfileHeaderActionHandler = (_ action: ProfileHeaderActions) -> Void
    let handler: ProfileHeaderActionHandler
    
    internal init(handler: @escaping ProfileHeaderView.ProfileHeaderActionHandler){
        self.handler = handler
    }
    
    var body: some View {
        HStack(spacing: 30) {
            Button(action: {
                handler(.back)
            }, label: {
                Image.back
            })
            Spacer()
            Text("@")
            Image.gear
        }
        .font(Font.Nunito.bold(size: 24))
        .foregroundColor(Color.textBlack)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 15)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView { _ in }
    }
}
