//
//  SideBarItemSevenView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct SideBarItemSevenView: View {
    
    let rows = 15
    let columns = 3
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 350, height: 650)
                .cornerRadius(10)
            
            VStack {
                Button(action: {}) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(3)
                        .background(Color.gray)
                        .clipShape(Circle())
                        .offset(x: 170)
                        .offset(y: -30)
                }
                Text("SideBar Item 7")
                    .foregroundColor(.white)
                
                ScrollView {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: columns), spacing: 10) {
                        ForEach(0..<rows) { row in
                            ForEach(0..<columns) { column in
                                Text("Item \(row * columns + column + 1)")
                                    .frame(width: 50, height: 50)
                                    .padding()
                                    .background(Color.white)
                                    .opacity(0.5)
                                    .cornerRadius(8)
                                    .border(Color.gray, width: 1)
                            }
                        }
                    }
                }
                .padding()
                .frame(maxHeight: 550)  // Adjust the maxHeight as needed
            }
        }
        .background(Color.clear)
    }
}

struct SideBarItemSevenView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarItemSevenView()
    }
}
