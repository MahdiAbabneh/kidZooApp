//
//  LoginPage.swift
//  kides zoo
//
//  Created by Mahdi Ababneh on 10/10/2023.
//

import SwiftUI

struct LoginPage: View {
    //property
     @State var userName:String = ""
     @State var passWord:String = ""

    //body
    
    var body: some View {
       
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            
            VStack{
                Spacer()
                TextField("Username", text: $userName)
                    .padding()
                .background(Color("AccentColor"))
                .cornerRadius(12)

                .padding(.horizontal,30)
                .padding(.vertical)
                
                TextField("Password", text: $passWord)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal,30)
                
                HStack{
                    Spacer()
                    
                    Text("Forgot PassWord ?")
                        .padding(.top,20)
                        .padding(.trailing,25)
                    
                }
                
                Button {
                   
                    
                } label: {
                    Text("Go")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color("4thColor"))
                        .cornerRadius(12)
                        .padding(.top,20)
                    
                    
                }

                HStack{
                    Text("Dont Have Account yet ?!")
                    
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("4thColor"))
                            
                    }

                }.padding(.top,20)
                
              
                
                Image("background2")
                    .resizable()
                    .scaledToFit()
                
            }
            
            
           
            
                
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}



#Preview {
    LoginPage()
}
