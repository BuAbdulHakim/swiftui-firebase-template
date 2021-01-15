//
//  Menu.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 15/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct Menu : View {
    
    var body : some View {
        VStack(spacing: 25){
            Button(action: {
                ListParkingSpot()
            }, label: {
                VStack(spacing: 8){
                    Image(systemName: "house")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Home")
                }
            })
            Button(action: {
                ReservationsView()
            }, label: {
                VStack(spacing: 8){
                    Image(systemName: "folder")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Reservations")
                }
            })
            Button(action: {
                WalletView()
            }, label: {
                VStack(spacing: 8){
                    Image(systemName:"wallet.pass")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Wallet")
                }
            })
            Button(action: {
                AboutView()
            }, label: {
                VStack(spacing: 8){
                    Image(systemName: "info.circle")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("About")
                }
            })
            Spacer(minLength: 15)
        }.padding(35)
        .foregroundColor(.black)
        .background(Color("Color").edgesIgnoringSafeArea(.bottom))
    }
}
