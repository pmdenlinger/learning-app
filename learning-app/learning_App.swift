//
//  learning_App.swift
//  learning-app
//
//  Created by user on 6/9/21.
//

import SwiftUI

@main
struct learning_App: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
