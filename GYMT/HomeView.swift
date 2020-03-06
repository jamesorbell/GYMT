//
//  HomeView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var isFullScreen = false
    
    var body: some View {
        NavigationView {
            // 3.
            ScrollView {
                VStack {
                    Text("Current Session")
                        .padding(.top, 25)
                        .font(.system(size: 25, weight: .bold))
                    HStack {
                        VStack {
                            Image(systemName: "stopwatch.fill")
                            Text("1:20").font(.system(size: 25, weight: .bold))
                            Text("Time").font(.system(size: 15))
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "heart.fill")
                            Text("143").font(.system(size: 25, weight: .bold))
                            Text("HR").font(.system(size: 15))
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "flame.fill")
                            Text("164").font(.system(size: 25, weight: .bold))
                            Text("Cal").font(.system(size: 15))
                        }
                    }
                    .padding(.horizontal, 50)
                    .padding(.vertical, 30)
                }
                .foregroundColor(Color.white)
                .background(Color(red: 30/255, green: 30/255, blue: 30/255))
                .cornerRadius(20)
                .padding(.vertical, 20)
                .padding(.horizontal, 30)
                
                
                Text("Ongoing Challenges")
                    .font(.system(size: 25, weight: .heavy))
                
            }
            // 4.
            .navigationBarItems(leading:
            HStack {
                Image("example-avatar")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }, trailing:
            HStack {
                Button(action: {}) {
                    HStack {
                        Text("1973")
                            .foregroundColor(Color.white)
                        Image("coin")
                            .resizable()
                            .frame(width: 15, height: 15)
                    }
                }
                .padding(.bottom, 5)
                .padding(.top, 5)
                .padding(.horizontal, 15)
                .background(Color(red: 30/255, green: 30/255, blue: 30/255))
                .cornerRadius(100)
            })
                // 5.
                .navigationBarTitle(Text("Home"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
