//
//  TCA_PracticeApp.swift
//  TCA_Practice
//
//  Created by 박지은 on 6/3/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_PracticeApp: App {
    
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_PracticeApp.store)
        }
    }
}
