//
//  UserView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct UserView: View {
    
    @State var avatarShowed: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                self.avatarShowed.toggle()
            }) {
                ZStack {
                    Image("avatar").resizable()
                        .frame(width: 100,height: 100)
                    Image(systemName: "plus.magnifyingglass")
                        .foregroundColor(Color(.white))
                        .font(Font.system(size: 30))
                }
                .mask(Circle())
                
            }
            Text("Jane Bubnova")
        }
        .sheet(isPresented: $avatarShowed, onDismiss: {
            print("modal closed")
        }) {
            AvatarView()
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
