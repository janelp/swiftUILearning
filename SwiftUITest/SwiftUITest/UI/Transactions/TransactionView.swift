//
//  TransactionView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct TransactionView: View {    
    
    let transaction: Transaction
    
    @State var pushView: Bool = false
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        NavigationLink(destination: LazyView(TransactionDetailView(transaction: self.transaction)), isActive: $pushView) {
            HStack() {
                VStack(alignment: .leading) {
                    Text(self.dateFormatter.string(from: transaction.date))
                        .font(Font.system(size: 22).bold())
                    HStack {
                        Text("amount")
                        Text(transaction.summ)
                    }
                    
                }
                Spacer()
                Image(systemName: transaction.type == .incoming ? "arrowshape.turn.up.left" : "arrowshape.turn.up.right")
            }
        }
}
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(transaction: Transaction.example)
    }
}
