//
//  HomeView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//
// The nice blue: rgb(31,61,102)
//

import SwiftUI

struct HomeView: View {
    
    @State var show = false
    
    var body: some View {
        
        NavigationView() {
            
            ScrollView() {
                
                SessionCard()
                
                Text("Ongoing Challenges")
                    .font(.headline)
                    .padding()
                
                ScrollView(.horizontal){
                    
                    HStack(spacing: 10){
                        
                        ChallengeRow()
                        ChallengeRow()
                        ChallengeRow()
                        
                    }.padding(.leading, 10)
                    
                }.frame(height: 250)
                
            }
            
            .navigationBarItems(trailing:
            HStack {
                Button(action: {}) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 31/255, green: 61/255, blue: 102/255))
                }
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

struct CardView: View {
    
    @State var show = false
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text("Challenge 1")
                    .padding()
                
                Text("Challenge 1")
                    .padding()
            }
            
            Spacer()
            
            Button(action: {
                self.show.toggle()
            }) {
                Text(">")
            }.padding()
            
        }
        .background(Color(red: 69/255, green: 123/255, blue: 157/255))
        .cornerRadius(12)
        .padding()
        .frame(height: 125)
        .foregroundColor(Color.white)
        .sheet(isPresented: $show) {
            ChallengeDetailView()
        }
    }
}

struct ChallengeDetailView : View {
    
    var body : some View{
        
        VStack{
            
            Image("running-bg").resizable().aspectRatio(1.35, contentMode: .fill).frame(width:UIScreen.main.bounds.width,height: 450).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                
                VStack(alignment: .center){
                    
                    Text("King of the Hill").fontWeight(.heavy).font(.largeTitle)
                        .padding()
                    
                    Text("The 3 muskateers").fontWeight(.heavy).padding(.bottom, 25)
                    
                    VStack(alignment: .leading){
                        Text("Leaderboard")
                        .fontWeight(.heavy)
                        .font(.subheadline)
                        .padding()
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
                    .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                    .foregroundColor(Color.white)
                    
                    // Iterate through list to generate the leaderboard according to current points within the challenge. However, currently just points to an external view (need to include variables to parse through etc in the future)
                    LeaderboardItemView()
                    LeaderboardItemView()
                    LeaderboardItemView()
                    LeaderboardItemView()
                    LeaderboardItemView()
                    LeaderboardItemView()
                    
                    Spacer()
                    
                }
                
            }.background(Color.white)
            .foregroundColor(Color.black)
            .clipShape(Rounded())
            .padding(.top, -75)
            
        }
    }
}

struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 30, height: 30))
        return Path(path.cgPath)
    }
}

struct LeaderboardItemView: View {
    var body: some View {
        HStack{
            Text("1st")
            Spacer()
            Text("Anita Bieda")
        }.padding()
    }
}

struct ProfileDetailView: View {
    var body : some View{
        VStack{
            GeometryReader{geo in
                
                VStack(alignment: .leading){
                    
                    HStack(alignment: .bottom){
                        Text("James Orbell")
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                        Spacer()
                        Image("example-avatar")
                        .resizable()
                            .frame(width: 75, height: 75)
                        .clipShape(Circle())
                    }
                    .padding()
                    .padding(.top, 30)
                    
                    HStack{
                        VStack(alignment: .leading) {
                            Text("43")
                                .fontWeight(.heavy)
                            Text("Friends")
                        }.padding()
                        
                        VStack(alignment: .leading) {
                            Text("12")
                                .fontWeight(.heavy)
                            Text("Groups")
                        }.padding()
                        
                        Spacer()
                        
                        Text("1945 Coins")
                            .fontWeight(.heavy)
                        
                        Image("coin")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(.trailing, 25)
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
                    .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                    .foregroundColor(Color.white)
                    .padding(.top, -25)
                    
                    HStack{
                        Text("Recent Activity")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
                    
                    // Iterate through list to generate the leaderboard according to current points within the challenge. However, currently just points to an external view (need to include variables to parse through etc in the future)
                    
                    RecentActivityItemView()
                    RecentActivityItemView()
                    RecentActivityItemView()
                    
                    HStack{
                        Text("Groups")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
                    
                    HStack{
                        Text("Completed Challenges")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
                    
                    Spacer()
                    
                }
                
            }.background(Color.white)
            .foregroundColor(Color.black)
            
        }
    }
}

struct RecentActivityItemView: View {
    var body: some View {
        HStack{
            VStack {
                Text("19")
                Text("TH")
            }
            .font(.subheadline)
            .padding()
            
            Text("1 Hour : 20 Minutes")
                .font(.subheadline)
                .fontWeight(.heavy)
                .padding()
            
            Spacer()
            
            Text(">")
                .padding()
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.topLeading)
        .border(Color.gray)
    }
}
