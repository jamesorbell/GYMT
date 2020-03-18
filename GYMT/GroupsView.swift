//
//  GroupsView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
        NavigationView {
            Text("Welcome to the Groups screen")
            
            .navigationBarTitle("Groups", displayMode: .inline)
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
