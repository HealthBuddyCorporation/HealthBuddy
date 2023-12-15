//
//  TrophyView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct TrophyItem: Identifiable {
    let id = UUID()
    let systemImageName: String
    let itemName: String
}

struct TrophyView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let sectionNames = ["Common", "Rare", "Legendary", "Epic", "Master"]
    
    let items: [[TrophyItem]] = {
        var itemsArray: [[TrophyItem]] = []
        let systemImageNames = ["figure.handball","figure.golf","figure.dance","figure.cricket","figure.climbing","figure.archery","figure.basketball","figure.bowling","figure.cooldown","figure.core.training","figure.cooldown","figure.boxing","figure.run", "figure.walk"]
        
        for section in 1...5 {
            var sectionItems: [TrophyItem] = []
            for index in 1...10 {
                let systemImageName = systemImageNames[index % systemImageNames.count]
                let itemName = "Trophy \(section * 10 + index)"
                let trophyItem = TrophyItem(systemImageName: systemImageName, itemName: itemName)
                sectionItems.append(trophyItem)
            }
            itemsArray.append(sectionItems)
        }
        return itemsArray
    }()
    
    @State private var selectedItem: TrophyItem?
    
    var body: some View {
        ZStack{
            MainFrameBackgroundView()
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(0..<sectionNames.count) { sectionIndex in
                        Section(header:
                                    Text(sectionNames[sectionIndex])
                            .shadow(radius: 10)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        ) {
                            ForEach(items[sectionIndex]) { trophyItem in
                                createTrophyButton(trophyItem: trophyItem)
                            }
                            
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 330, bottom: 0, trailing: 330))
            }
        }
    }
    
    private func createTrophyButton(trophyItem: TrophyItem) -> some View {
        Button(action: {
            selectedItem = trophyItem
        }) {
            TrophyItemView(trophyItem: trophyItem)
        }
        .buttonStyle(PlainButtonStyle())
        .alert(item: $selectedItem) { selectedItem in
            Alert(
                title: Text("$ Selected trophy name"),
                message: Text("Trophy details: " + "Obtained if your tamagochi don't exceed 50kg in 30 days"),
                dismissButton: .cancel()
            )
        }
    }
}

struct TrophyItemView: View {
    let trophyItem: TrophyItem
    
    var body: some View {
        
        VStack {
            Image(systemName: trophyItem.systemImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .foregroundColor(.customColor)
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .scaleEffect(1)
                .frame(width: 120, height: 100)
            Text(trophyItem.itemName)
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(.white .opacity(0.5))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    TrophyView()
}
