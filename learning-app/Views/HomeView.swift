//
//  ContentView.swift
//  learning-app
//
//  Created by user on 6/9/21.
//

import SwiftUI



struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
