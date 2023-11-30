//
//  SideBarInventoryCleanerView.swift
//  HealthBuddy
//
//  Created by Student04 on 30/11/2023.
//

import SwiftUI

struct SideBarInventoryCleanerView: View {
    @EnvironmentObject var data :DataModel
    @Binding var isShown : Bool
    @Binding var isBarVisible: Bool
    
    var rows = 2
    
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
                
                Text("Inventory : Hygiene")
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: Array(repeating: GridItem(), count: rows), spacing: 10) {
                        ForEach(data.cleanerList){ cleaner in
                            if(cleaner.quantity > 0){
                                ItemBox(cleaner: cleaner, available: true)
                                    .draggable(cleaner)
                                    .onTapGesture {
                                        data.handleCleanDrop([cleaner])
                                    }
                            }else{
                                ItemBox(cleaner: cleaner, available: false)
                            }
                        }
                    }
                }
                .padding()
                .frame(maxHeight: 250)
                .frame(maxWidth: 350)
            }
        }.offset(y: -100)
    }
}

//#Preview {
//    SideBarInventoryCleanerView()
//}
