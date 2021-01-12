//
//  SwiftUIView.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 11/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

//struct SignOutButton: View{
//    var env: FirebaseEnv
//    var body: some View{
//        Button("Signout") {
//            env.signOut()
//        }
//        .foregroundColor(.red)
//    }
//}

struct ParkingSpotView: View {
    @EnvironmentObject var env: FirebaseEnv
    let ParkingSpotEnvironment = ParkingSpotEnv()
    var body: some View {
        
                NavigationView {
                    VStack(alignment: .leading){
                        Text("Select Your Parking Destination")
                            .font(.headline)
                            .fontWeight(.heavy)
                            Spacer()
                        ScrollView(.horizontal){
                            HStack{
                                
                                VStack{
                                    Image("Bin-Khaldun St")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height: 200, alignment: .center)
                                    Text("Bin-Khaldun St")
                                }
                                Text("Tunisia St.")
                                Text("Al-Muthana St.")
                                Text("Soor St.")
                                Text("Al-Shuhada St.")
                            }
//                    //Form {
//                        Section(footer: Text("you are signed in!") , content: {
//                            NavigationLink("Add a new item", destination: AddItem()
//                                            .environmentObject(itemsEnvironment))
//                            NavigationLink("List all items", destination: ListItems()
//                                            .environmentObject(itemsEnvironment))
//                        })
//                    //}
//                    .navigationTitle("Home")
//                    .navigationBarItems(trailing: SignOutButton(env: env))
                }
                        Spacer()
            }
            
        }
    }
}

struct ParkingSpotView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingSpotView()
            .environmentObject(FirebaseEnv())
    }
}



