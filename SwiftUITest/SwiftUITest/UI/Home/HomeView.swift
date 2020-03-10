//
//  HomeView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var selectedTab: RootView.Tab
    @Binding var selectedTransactionIndex: Int?
    
    var body: some View {
        Button(action: {
            self.selectedTab = .transactions
            self.selectedTransactionIndex = 1
        }) {
            Image(systemName: "dollarsign.circle.fill").resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(selectedTab: .constant(.home), selectedTransactionIndex: .constant(nil))
    }
}
