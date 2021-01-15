//
//  ListParkingSpot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 13/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct SignOutButton: View{
    var env: FirebaseEnv
    var body: some View{
        Button("Signout") {
            env.signOut()
        }
        .foregroundColor(.red)
    }
}

struct ListParkingSpot: View {
    @EnvironmentObject var env: FirebaseEnv
    @State var show = false
    var body: some View {
        
        NavigationView {
            ZStack{
                LinearGradient(gradient: .init(colors: [Color("Color-1"),Color("Color-2"),Color("Color-3")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ScrollView(showsIndicators: false){
                        VStack(spacing: 15){
                            ForEach(parkingSpots){ spot in
                                NavigationLink(
                                    destination: ListChildSlot(childSlot: spot.childSlot),
                                    label: {
                                        VStack{
                                            Image(spot.name)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 250).cornerRadius(15)
                                            Text(spot.name)
                                                .frame(width: 140, height: 30, alignment: .center)
                                                .foregroundColor(.white)
                                                .background(Color(#colorLiteral(red: 0.9725490808, green: 0.5882353187, blue: 0.1176470518, alpha: 1)))
                                                .cornerRadius(20)
                                        }
                                    })
                            }                            
                        }
                        
                    }
                GeometryReader{_ in
                    HStack{
                        Menu()
                            .offset(x: self.show ? 0 : -UIScreen.main.bounds.width)
                            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
                        
                        Spacer()
                    }
                }.background(Color.black.opacity(self.show ? 0.5 : 0))
                
                //}
            }.navigationBarTitle("Select Your Destination", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.show.toggle()
                
            }, label: {
                if self.show{
                    Image(systemName: "arrow.left").font(.body).foregroundColor(.black)
                }
                else{
                Image("Menu").renderingMode(.original).resizable().frame(width: 20, height: 20, alignment: .leading)
                }
            }), trailing: SignOutButton(env: env))
        }
    }
}

struct ListParkingSpot_Previews: PreviewProvider {
    static var previews: some View {
        ListParkingSpot()
            .environmentObject(FirebaseEnv())
    }
}


