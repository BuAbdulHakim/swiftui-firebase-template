//
//  AuthenticationView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        NavigationView {
            ZStack{
                //Color(#colorLiteral(red: 0.205801785, green: 0.3273817897, blue: 0.3992141187, alpha: 1))
                LinearGradient(gradient: .init(colors: [Color("Color-1"),Color("Color-2"),Color("Color-3")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                    Text("On-SPark")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Your new On-Street Parking Experince")
                        .font(.caption)
                    
                    NewAuthView()
                    
                    NavigationLink(
                        destination: SignIn(),
                        label: {Text("Sign in").modifier(SignInModifier())}
                    )
                    NavigationLink(
                        destination: SignUp(),
                        label: {Text("Create an account")}
                    )
                }
                .padding()
                .foregroundColor(.white)
                //.navigationTitle("Home")
            }
        }
    }
}

//struct SignInModifier: ViewModifier{
//    func body(content: Content) -> some View {
//        content
//            .foregroundColor(.white)
//            .padding()
//            .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity,  alignment: .center)
//            .background(Color.blue)
//            .cornerRadius(10)
//            .padding(.horizontal)
//    }
//}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        //AuthenticationView()
        NewAuthView()
    }
}
