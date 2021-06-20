//
//  ProfileView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 19/06/21.
//

import SwiftUI

struct ProfileView: View {
    
    private let profilePicSize: CGFloat = 76
    
    @Environment(\.presentationMode) var presentaionMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                ProfileHeaderView { action in
                    switch action{
                    case .back:
                        presentaionMode.wrappedValue.dismiss()
                    }
                }
                Group{
                    Image
                        .profile_pic
                        .resizable()
                        .frame(width: profilePicSize,
                               height: profilePicSize)
                        .cornerRadius(20)
                    
                    Text("Neeraj Kumar")
                        .font(Font.Nunito.bold(size: 16))
                    Text("@Neeraj_Kumar")
                        .font(Font.Nunito.bold(size: 12))
                        .padding(.top, 1)
                    
                    HStack{
                        HStack(spacing: 0){
                            Text("117")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("followers")
                                .font(Font.Nunito.semiBold(size: 12))
                                .padding(.trailing, 5)
                        }
                        .padding(.trailing, 30)
                        
                        HStack(spacing: 0){
                            Text("17")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("following")
                                .font(Font.Nunito.semiBold(size: 12))
                                .padding(.trailing, 5)
                        }
                        .padding(.trailing, 30)
                    }
                    .padding(.top, 15)
                    
                    Text("Associate Software Engineer:- IOS and Android App Developer. Having 2 years of professional software development experience.")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 14))
                    
                    HStack(alignment: .top){
                        
                        Image("person_0")
                            .resizable()
                            .frame(width: 38,
                                   height: 38)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading) {
                            Text("Joined 18 May 2021")
                                .font(Font.Nunito.regular(size: 12))
                            Text("Nominated by ")
                                .font(Font.Nunito.regular(size: 12)) +
                            Text("Shivam Sharma")
                                .font(Font.Nunito.bold(size: 12))
                            
                        }
                    }
                    .padding(.top, 30)
                }
                .foregroundColor(Color.textBlack)
                .padding(.horizontal, 15)
                Spacer()
            }
            .padding(.top, 65)
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
