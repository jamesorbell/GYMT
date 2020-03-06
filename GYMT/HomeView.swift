//
//  HomeView.swift
//  GYMT
//
//  Created by James Orbell on 26/02/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

// Colour palette used:
// #E63946 - Desire
// #F1FAEE - Honeydew
// #A8DADC - Light Blue
// #457B9D - Queen Blue
// #1D3557 - Space Cadet

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            // 3.
            ScrollView(.vertical, showsIndicators: true) {
                SessionView()
                
                Text("Ongoing Challenges")
                    .font(.system(size: 25, weight: .heavy))
                    .padding()

                CardView()
                    
                CardView()

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
                .background(Color(red: 69/255, green: 123/255, blue: 157/255))
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

struct SessionView: View {
    var body: some View {
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
        .background(Color(red: 29/255, green: 53/255, blue: 87/255))
        .cornerRadius(20)
        .padding()
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
            Detail()
        }
    }
}

struct Detail : View {
    
    var body : some View{
        
        VStack{
            Text("Hello there this is my card")
            
            GeometryReader{geo in
                
                VStack(alignment: .leading){
                    
                    detailTop()
                    detailMiddle()
                    detailBottom()
                    
                }
                
            }
        }
        
    }
    
}

struct detailTop : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack{
                
                VStack(alignment: .leading){
                    
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                    
                }
                
                Spacer()
                
                Text("$299").foregroundColor(Color("bg")).font(.largeTitle)
            }
            
        }.padding()
    }
}


struct detailMiddle : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            

            HStack(spacing: 5){
                
                Text("Kecamatan Klojen").foregroundColor(Color("bg"))
                
            }
            
            Text("People").fontWeight(.heavy)
            
            Text("Number Of People In Your Group").foregroundColor(.gray)
            
            HStack(spacing: 6){
                
                ForEach(0..<5){i in
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("\(i + 1)").foregroundColor(.white).padding(20)
                        
                    }.background(Color("bg"))
                    .cornerRadius(8)
                }
            }
            
            
        }.padding(.horizontal,15)
    }
}

struct detailBottom : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            Text("Description").fontWeight(.heavy)
            Text("Forest Camping Experiences and Meanings Key elements of camping experience include nature, social interaction, and comfort/convenience. The most common associated meanings are restoration, family functioning").foregroundColor(.gray)
            
            HStack(spacing: 8){
                
                Button(action: {
                    
                }) {
                    
                    HStack(spacing: 6){
                        
                        Text("Book Your Experience")
                        
                    }.foregroundColor(.white)
                    .padding()
                    
                }.background(Color("bg"))
                .cornerRadius(8)
                
            }.padding(.top, 6)
            
        }.padding()
    }
}

struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
