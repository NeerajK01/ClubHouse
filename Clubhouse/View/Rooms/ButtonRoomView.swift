//
//  ButtonRoomView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct ButtonRoomView: View {
    
    enum BottomRoomViewActions {
        case leave
    }
    
    typealias BottomRoomActionHandler = (_ action: BottomRoomViewActions) -> Void
    
    let handler: BottomRoomActionHandler
    
    internal init(handler: @escaping ButtonRoomView.BottomRoomActionHandler) {
        self.handler = handler
    }
    
    
    var body: some View {
        HStack(spacing: 22){
            
            Button(action: {
                handler(.leave)
            }, label: {
                
                Text("✌️ Leave Quietly")
                    .font(Font.Nunito.bold(size: 16))
                    .foregroundColor(Color.customRed)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 8)
                    .background(Color.customLightGray)
                    .cornerRadius(18)
                
            })
            
            Spacer()
            
            Image
                .plus
                .font(Font.Nunito.bold(size: 24))
                .padding(8)
                .background(Color.customLightGray)
                .clipShape(Circle())
            
            Image
                .handRaised
                .font(Font.Nunito.bold(size: 24))
                .padding(8)
                .background(Color.customLightGray)
                .clipShape(Circle())
            
        }
        .padding(.horizontal, 15)
        .padding(.top, 4)
        .frame(maxWidth: .infinity,
               maxHeight: 100,
               alignment: .top)
        .background(Color.cardBackground)
    }
}

struct ButtonRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRoomView{ _ in }
    }
}
