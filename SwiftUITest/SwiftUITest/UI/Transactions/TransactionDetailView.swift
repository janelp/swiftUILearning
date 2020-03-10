//
//  TransactionDetailView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct TransactionDetailView: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var transaction: Transaction
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("date")
                    .bold()
                Text(dateFormatter.string(from: transaction.date))
                Spacer()
            }
            HStack {
                Text("type")
                    .bold()
                Text(transaction.type.rawValue)
            }
            HStack {
                Text("amount")
                    .bold()
                Text(transaction.summ)
            }
            Spacer()
        }
        .padding(10)
        .navigationBarTitle(Text("transaction_detail"))        
    }
}

struct TransactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailView(transaction: Transaction.example)
    }
}
