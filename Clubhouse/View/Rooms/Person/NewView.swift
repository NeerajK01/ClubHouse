//
//  NewView.swift
//  Clubhouse
//
//  Created by Neeraj kumar on 20/06/21.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        Text("🎉")
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint,
                    radius: 1,
                    x: 0.0,
                    y: 1)
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
