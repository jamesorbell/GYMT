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
                Text("Setting 1")
                Text("Setting 2")
                Text("Setting 3")
                Text("Setting 4")
                Text("Setting 5")
                Text("Setting 6")
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
