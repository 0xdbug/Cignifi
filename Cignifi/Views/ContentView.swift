//
//  ContentView.swift
//  Cignifi
//
//  Created by 1di4r on 11/10/20.
//  Copyright © 2020 1di4r. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var willMoveToNextScreen = false
    @State var email: String = ""
    @State var password: String = ""
    
    @ObservedObject var keyboardResponder = KeyboardResponder()
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                }.padding(.top, 90)
                
                HStack{
                    Text("Login to your Account")
                        .font(.system(size: 24, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)))
                        .padding(.leading, 27)
                        .padding(.bottom, 20)

                    Spacer()
                }.padding(.top, 90)
                VStack(alignment: .center){
                    TextField("Email", text: $email)
                        .padding()
                        .cornerRadius(5.0)
                        .border(Color(red: 0, green: 0.0, blue: 0.0, opacity: 0))
                        .padding(.bottom, 20)
                        .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.3799198972)),radius: 0.5)
                    TextField("Password", text: $password)
                        .padding()
                        .cornerRadius(5.0)
                        .border(Color(red: 0, green: 0.0, blue: 0.0, opacity: 0))
                        .padding(.bottom, 20)
                        .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.3799198972)),radius: 0.5)
                        .cornerRadius(0.9)
                        
                    
                    Button(action: {
                        
                    }){
                        Text("Sign in")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 40)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color(#colorLiteral(red: 0.1019607843, green: 0.2235294118, blue: 0.537254902, alpha: 1)))
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.1019607843, green: 0.2235294118, blue: 0.537254902, alpha: 1)),radius: 5)
                    
                }.padding(.horizontal, 34.0)
                Spacer()
            }
            VStack{
                Spacer()
                Text("-Or sign in with-")
                    .foregroundColor(Color(#colorLiteral(red: 0.6274509804, green: 0.6352941176, blue: 0.6509803922, alpha: 1)))
                    .font(.system(size: 18, design: .rounded))
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width: 100)
                        .cornerRadius(5)
                            .shadow(color: Color(#colorLiteral(red: 0.862745098, green: 0.862745098, blue: 0.862745098, alpha: 0.66)),radius: 5)
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .padding()
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width: 110)
                        .cornerRadius(5)
                            .shadow(color: Color(#colorLiteral(red: 0.862745098, green: 0.862745098, blue: 0.862745098, alpha: 0.66)),radius: 5)
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .padding()
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width: 110)
                        .cornerRadius(5)
                            .shadow(color: Color(#colorLiteral(red: 0.8614790089, green: 0.8614790089, blue: 0.8614790089, alpha: 0.6560861129)),radius: 5)
                    Image("Twitter")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .padding()
                    }
                }.padding(.top, 20)
            }.padding(.top, 40)
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(Color(#colorLiteral(red: 0.6274509804, green: 0.6352941176, blue: 0.6509803922, alpha: 1)))
                Button(action: {
                    self.willMoveToNextScreen = true
                }){
                    Text("Sign up")
                }
                .foregroundColor(Color(#colorLiteral(red: 0.1019607843, green: 0.2235294118, blue: 0.537254902, alpha: 1)))
            }.padding(.top, 55)
            .padding(.bottom, 40)
        }
        .navigate(to: signup(), when: $willMoveToNextScreen)
        .offset(y: -keyboardResponder.currentHeight*0.9)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
