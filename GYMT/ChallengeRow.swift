//
//  ChallengeRow.swift
//  GYMT
//
//  Created by James Orbell on 14/03/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct ChallengeRow: View {
    var body: some View {
        // status image
        Image("running-bg")
            .resizable()  // resizable image
            .frame(width: 175, height: 250) // image frame
            // create outer view with border (color, width)
            .border(Color.gray.opacity(0.5), width: 0.5)
            .opacity(0.8)
            .background(Color.black)
            .cornerRadius(20)
    }
}

struct ChallengeRow_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeRow()
    }
}
