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
    @EnvironmentObject var parkingSpotEnvironment: ParkingSpotEnv
    //let parkingSpotEnvironment = ParkingSpotEnv()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Text("Select Your Parking Destination")
                    .font(.headline)
                    .fontWeight(.heavy)
                Spacer()
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        ForEach(parkingSpotEnvironment.spots, id: \.self){ spot in
                            VStack{
                                Image(spot.name)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 250, height: 150, alignment: .center)
                                //.clipShape(Circle())
                                Text(spot.name)
                            }
                        }
                        Text("Tunisia St.")
                        Text("Al-Muthana St.")
                        Text("Soor St.")
                        Text("Al-Shuhada St.")
                    }
                    
                }
                Spacer()
            }
            
        }//.onAppear(perform: parkingSpotEnvironment.loadSpots)
        //.navigationBarItems(trailing: SignOutButton(env: env))
    }
}

struct ParkingSpotView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingSpotView()
            .environmentObject(ParkingSpotEnv())
    }
}



