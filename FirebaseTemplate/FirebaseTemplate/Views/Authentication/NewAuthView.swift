//
//  NewAuthView.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 15/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct NewAuthView: View {
    @State var index = 0
    var body: some View {
        
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
                
                HStack{
                    Button(action: {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                            self.index = 0
                        }
                        
                    }, label: {
                        Text("Existing")
                            .foregroundColor(self.index == 0 ?.black: .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    }).background(self.index == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                            self.index = 1
                        }
                        
                    }, label: {
                        Text("New")
                            .foregroundColor(self.index == 1 ?.black: .white)
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    }).background(self.index == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                }.background(Color.black.opacity(0.1))
                .clipShape(Capsule())
                .padding(.top, 25)
                
                if index == 0 {
                    Login()
                } else {
                    NewAccount()
                }
                
                
            }.padding()
            .foregroundColor(.white)
            
        }
    }
}

struct Login: View {
    @State var userCredentials = SignInCredentials(email: "", password: "")
    @EnvironmentObject var env: FirebaseEnv
    @State var alertShown: Bool = false
    @State var alertError: String = ""
    
    @State private var showPassword: Bool = false

    var body: some View {
        VStack{
            VStack{
                
                HStack(spacing: 15){
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    TextField("Enter Email Address", text: $userCredentials.email).keyboardType(.emailAddress)
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    if showPassword {
                        TextField("Enter Password", text: $userCredentials.password)
                    } else {
                        SecureField("Enter Password", text: $userCredentials.password)
                    }
                    Button(action: {
                        self.showPassword.toggle()

                    }, label: {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    })
                }.padding(.vertical, 20)
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            .foregroundColor(.black)
            
            Button(action: {
                env.signIn(user: userCredentials) { (uid) in
                    print("Signed in!")
                } fail: { (error) in
                    alertError = error.debugDescription
                    alertShown = true
                }
            }, label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }).background(
                LinearGradient(gradient: .init(colors: [Color("Color-1"),Color("Color-2"),Color("Color-3")]), startPoint: .top, endPoint: .bottom)
            ).cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
            .alert(isPresented: $alertShown, content: {
                Alert(title: Text("Error!"), message: Text(alertError), dismissButton: .cancel())
            })
            
        }
        
    }
}

struct NewAccount: View {
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    @State var user = User()
    @State var password = ""
    @EnvironmentObject var env: FirebaseEnv
    
    var body: some View {
        VStack{
            VStack{
                HStack(spacing: 15){
                    Image(systemName: "person")
                        .foregroundColor(.black)
                    TextField("first name", text: $user.firstName).keyboardType(.default)
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    Image(systemName: "person")
                        .foregroundColor(.black)
                    TextField("last name", text: $user.lastName).keyboardType(.default)
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    TextField("email", text: $user.email).keyboardType(.emailAddress)
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("password", text: $password)
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    })
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            .foregroundColor(.black)
            
            Button(action: {
                env.signUp(user: user, password: password)
            }, label: {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }).background(
                LinearGradient(gradient: .init(colors: [Color("Color-1"),Color("Color-2"),Color("Color-3")]), startPoint: .top, endPoint: .bottom)
            ).cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
            
        }
        
    }
}

struct SignInModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity,  alignment: .center)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct SignIn: View {
    @State var userCredentials = SignInCredentials(email: "", password: "")
    @EnvironmentObject var env: FirebaseEnv
    @State var alertShown: Bool = false
    @State var alertError: String = ""
    var body: some View {
        
        VStack(spacing: 15){
            Image("Logo")
                .resizable()
                .scaledToFit()
            TextField("email", text: $userCredentials.email).keyboardType(.emailAddress)
            SecureField("password", text: $userCredentials.password)
            Button("Sign in"){
                env.signIn(user: userCredentials) { (uid) in
                    print("Signed in!")
                } fail: { (error) in
                    alertError = error.debugDescription
                    alertShown = true
                }
            }
            NavigationLink("Don't have an account?", destination: SignUp())
        }
        .navigationTitle("Sign in")
        .alert(isPresented: $alertShown, content: {
            Alert(title: Text("Error!"), message: Text(alertError), dismissButton: .cancel())
        })
        .padding()
    }
}

struct NewAuthView_Previews: PreviewProvider {
    static var previews: some View {
        NewAuthView()
            .environmentObject(FirebaseEnv())
        
    }
}
