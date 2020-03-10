//
//  LazyView.swift
//  SwiftUITest
//
//  Created by Evgeniya Bubnova on 10.03.2020.
//  Copyright © 2020 Evgeniya Bubnova. All rights reserved.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
