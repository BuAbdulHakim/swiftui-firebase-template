//
//  ListParkingSpot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 13/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct ListParkingSpot: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(#colorLiteral(red: 0.8106295466, green: 0.7681668401, blue: 0.7027057409, alpha: 1))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                        
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(parkingSpots){ spot in
                                NavigationLink(
                                    destination: ListChildSlot(childSlot: spot.childSlot),
                                    label: {
                                        VStack{
                                            Image(spot.name)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 250, height: 150, alignment: .center)
                                            Text(spot.name)
                                                .frame(width: 140, height: 30, alignment: .center)
                                                .foregroundColor(.white)
                                                .background(Color.blue)
                                                .cornerRadius(20)
                                        }
                                    })
                            }                            
                        }
                        
                    }
                    Spacer()
                }.navigationTitle("Select Your Destination")
                
            }
        }
    }
}

struct ListParkingSpot_Previews: PreviewProvider {
    static var previews: some View {
        ListParkingSpot()
    }
}
