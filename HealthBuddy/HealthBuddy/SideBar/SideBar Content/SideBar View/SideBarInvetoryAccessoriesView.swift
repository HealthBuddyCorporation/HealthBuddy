//
//  SideBarInvetoryAccessoriesView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 28/11/2023.
//

import SwiftUI

struct SideBarInvetoryAccessoriesView: View {
    
    @Binding var isShown : Bool
    @Binding var isBarVisible: Bool
    
    let rows = 2
    let columns = 40
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 350, height: 300)
                .cornerRadius(10)
            
            VStack {
                Button {
                    isBarVisible = false
                    isShown = false
                    print("Click click")} label: {
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
                    }
                Text("Inventory : accessories")
                    .foregroundColor(.white)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: Array(repeating: GridItem(), count: rows), spacing: 10) {
                        ForEach(0..<columns) { column in
                            ForEach(0..<rows) { row in
                                Text("Item \(row * columns + column + 1)")
                                    .frame(width: 50, height: 50)
                                    .padding()
                                    .background(Color.white)
                                    .foregroundColor(.white)
                                    .opacity(0.5)
                                    .cornerRadius(8)
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
//    SideBarInvetoryAccessoriesView()
//}
