//
//  SideBarInventoryToyView.swift
//  HealthBuddy
//
//  Created by Student04 on 07/12/2023.
//

import SwiftUI

struct SideBarInventoryToyView: View {
    @EnvironmentObject var data :DataModel
    @Binding var isShown : Bool
    @Binding var isBarVisible: Bool
    
    let rows = 2
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 350, height: 300)
                .cornerRadius(10)
            
            VStack {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(3)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .offset(x: 172)
                    .offset(y: -4)
                    .onTapGesture {
                        isShown = false
                        isBarVisible = true
                    }
                Text("Inventory : Entertainment")
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: Array(repeating: GridItem(), count: rows), spacing: 10) {
                        ForEach(data.toyList){ toy in
                            if(toy.quantity > 0){
                                ItemBox(toy: toy, available: true)
                                    .draggable(toy)
                                    .onTapGesture {
                                        data.play(toy)
                                    }
                            }else{
                                ItemBox(toy: toy, available: false)
                            }
                        }
                    }
                }
                .padding()
                .frame(maxHeight: 250)
                .frame(maxWidth: 350)
            }
        }
    }
}

//#Preview {
//    SideBarInventoryToyView()
//}
