//
//  TransactionsView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct TransactionsView: View {
    
    @ObservedObject var viewModel = TransactionsListViewModel()
    var selectedTransactionIndex: Int?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.transactions) { transaction in
                    self.transactionView(transaction: transaction)
                }
            }
            .navigationBarTitle(Text("transactions"))
        }
    }
    
    func transactionView(transaction: Transaction) -> TransactionView {
        let index = viewModel.transactions.firstIndex(of: transaction)
        let push = index == selectedTransactionIndex
        return TransactionView(transaction: transaction, pushView: push)
    }
    
    init(selectedTransactionIndex: Int?) {
        self.selectedTransactionIndex = selectedTransactionIndex
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView(selectedTransactionIndex: nil)
    }
}
