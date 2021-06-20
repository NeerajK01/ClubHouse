//
//  HostView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct HostView: View {
    
    let people: [Person]
    
    private let othersColumn = [
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25)
    ]
    
    var body: some View {
        LazyVGrid(columns: othersColumn,
                  alignment: .leading,
                  spacing: 15){
            
            ForEach(people){ person in
                PersonView(person: person)
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 50)
    }
}

struct HostView_Previews: PreviewProvider {
    static var previews: some View {
        HostView(people: FeedRoom.dummyData[0].othersInRoom)
    }
}
