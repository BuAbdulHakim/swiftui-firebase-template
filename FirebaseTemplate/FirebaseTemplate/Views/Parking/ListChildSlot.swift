//
//  ListChildSlot.swift
//  FirebaseTemplate
//
//  Created by NasserAlsaqabi on 13/01/2021.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct ListChildSlot: View {
    @State var isShown = false
//    @State var isOccupied = false
//    @State var isReserved = false

    @State var childSlot: [ChildSlot]
    @State var i: Int = 0
    
    var body: some View {
        ZStack{
            Image("ChildSlotSketch")
                .resizable()
                .scaledToFit()
            HStack{
                Spacer()
                ScrollView(showsIndicators: false){
                    Spacer()

                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                        Spacer()
                        ForEach( 0 ..< childSlot.count ){ slot in
                            
                            Button(action: {
                                if childSlot[slot].status == "Empty" {
                                    i = slot
                                    isShown = true
                                }
//                                else if childSlot[slot].status == "Occupied" {
//                                    isOccupied = true
//                                }
//                                else {
//                                    isReserved = true
//                                }
                            }, label: {
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                                    Text(String(childSlot[slot].number))
                                    Text(childSlot[slot].status)
                                    
                                    //Text(isPresed ? status : slot.status)
                                }.padding(.all)
                                .frame(width: 120, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                                .background(childSlot[slot].color.opacity(0.6))
                                .cornerRadius(100)
                                
                            })
                            .alert(isPresented: $isShown, content: {
                                Alert(title: Text("Confirm your reservation"),
                                      primaryButton: .default(Text("Yes")){
                                        //action
                                        childSlot[i].status = "Reserved"
                                        childSlot[i].color = .yellow
                                      },
                                      secondaryButton: .default(Text("No"))
                                )
                            })
                            Spacer()

//                            .alert(isPresented: $isOccupied, content: {
//                                Alert(title: Text("This slot is already occupied"))
//                            })
//                            .alert(isPresented: $isReserved, content: {
//                                Alert(title: Text("This slot is already reserved"))
//                            })
                        }
                        
                        
                    }.padding(.horizontal)
                }
            }.navigationTitle("Select your Slot")
        }
    }
}

struct ListChildSlot_Previews: PreviewProvider {
    static var previews: some View {
        ListChildSlot(childSlot: BinKhaldun)
    }
}
