//
//  LoginView.swift
//  GYMT
//
//  Created by James Orbell on 31/03/2020.
//  Copyright © 2020 James Orbell. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    let facebook_color = UIColor(red: 59, green: 89, blue: 152, alpha: 1)

    var body: some View {
            NavigationView {
            VStack {
                Image(colorScheme == .light ? "GYMT-logo" : "GYMT-logo-white")
                .resizable()
                .scaledToFit()
                .frame(width: 200.0,height:200)
                
                Spacer()
                
                Text("Login with")
                
                HStack{
                    Button(action: {self.viewRouter.currentPage = "page4"}) {
                    Image("facebook-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                    }
                    .frame(width: 150, height: 75, alignment: .center)
                    .foregroundColor(Color.white)
                    // Set background color to the official facebook color codes.
                    .background(Color(red: 59 / 255, green: 89 / 255, blue: 152 / 255))
                    .cornerRadius(20)
                    .padding()
                        .shadow(radius: 10)
                    
                    Button(action: {self.viewRouter.currentPage = "page4"}) {
                    Image("google-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                    }
                    .frame(width: 150, height: 75, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                    .shadow(radius: 10)
                }
                
                HStack {
                    Text("Need an account?")
                    Button(action: {self.viewRouter.currentPage = "page3"}) {
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: TermsAndConditionsView()) {
                    Text("Terms and conditions")
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
