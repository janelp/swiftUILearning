//
//  TransactionsListViewModel.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

final class TransactionsListViewModel: ObservableObject {
    @Published private(set) var transactions = [
    Transaction(summ: "100", date: Date(timeIntervalSinceNow: -925), type: .incoming),
    Transaction(summ: "200", date: Date(timeIntervalSinceNow: -10545), type: .outgoing),
    Transaction(summ: "165600", date: Date(timeIntervalSinceNow: -5231212), type: .outgoing),
    Transaction(summ: "1212100", date: Date(timeIntervalSinceNow: -9221215), type: .incoming)
    ]
}
