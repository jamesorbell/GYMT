//
//  SettingsView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                SettingListItem()
                SettingListItem()
                SettingListItem()
                SettingListItem()
                SettingListItem()
            }
            
            .navigationBarTitle("Settings", displayMode: .inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct SettingListItem: View {
    var body: some View {
        NavigationLink(destination: SettingDetailView()) {
            Text("Setting")
        }
    }
}
