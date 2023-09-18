//
//  TabView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView (selection: $selectedTab) {
            ProfileView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            AnalyticsView()
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                }
                .tag(1)
            ProfileSettingsView()
                .tabItem {
                    Image(systemName: "gear")

                }
                .tag(2)
        }
        .accentColor(Color("Primary"))

    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
