//
//  CalendarView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            Text("Welcome to the Calendar screen")
            
            .navigationBarTitle("Calendar", displayMode: .inline)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
