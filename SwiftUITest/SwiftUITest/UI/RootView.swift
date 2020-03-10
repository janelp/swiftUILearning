//
//  RootView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: RootView.Tab = .home
    @State var selectedTransactionIndex: Int? = nil
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab, selectedTransactionIndex: $selectedTransactionIndex)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
            }
            .tag(Tab.home)
            TransactionsView(selectedTransactionIndex: selectedTransactionIndex)
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("transactions")
            }
            .tag(Tab.transactions)
            UserView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
            }
            .tag(Tab.profile)
        }
    }
}


extension RootView {
    enum Tab: Hashable {
        case home
        case transactions
        case profile
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
