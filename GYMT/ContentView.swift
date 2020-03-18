//
//  ContentView.swift
//  GYMT
//
//  Created by James Orbell on 25/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var username: String
    var displayname: String
    // var avatar: String
    var coins: Int
}

struct ContentView: View {
    var body: some View {
        
        // Tab View, displaying 4 different other seperate SwiftUI views - named after their respective pages.
        TabView{
            // Link to HomeView.swift file
            HomeView()
                // Initiates a new tab bar item.
                .tabItem {
                    // Uses a vertical stacking system for the tab item's layout.
                    VStack {
                        // Import relevant logo from the SFLogos library, built into XCode
                        Image(systemName: "house.fill")
                        // Simple tab label
                        Text("Home")
                    }
                }
            .tag(0)
            // Link to GroupsView.swift file
            GroupsView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("Groups")
                    }
                }
            .tag(1)
            // Link to CalendarView.swift file
            CalendarView()
                .tabItem {
                    VStack {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                }
            .tag(2)
            // Link to SettingsView.swift file
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
            .tag(3)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
