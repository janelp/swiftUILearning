//
//  Transaction.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 09.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import Foundation

enum TransactionType: String {
    case incoming
    case outgoing
}

struct Transaction: Identifiable, Equatable {
    let id = UUID()
    let summ: String
    let date: Date
    let type: TransactionType
    
    static let example = Transaction(summ: "000", date: Date(), type: .incoming)
}
