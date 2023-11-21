//
//  MainTestingView.swift
//  HealthBuddy
//
//  Created by Student04 on 20/11/2023.
//

import SwiftUI

struct MainTestingView: View {
    @EnvironmentObject var data :DataModel
    @State var isTargeted :Bool = false
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                BuddyStat(stat: "Health", value: $data.buddy.hp)
                BuddyStat(stat: "Food", value: $data.buddy.nutrition)
                BuddyStat(stat: "Hygiene", value: $data.buddy.hygiene)
                BuddyStat(stat: "Weight", value: $data.buddy.weight)
                BuddyStat(stat: "Happiness", value: $data.buddy.happiness)
            }
            Spacer()
            VStack{
                Rectangle()
            }
            .frame(width: 200, height: 200)
            .foregroundColor(isTargeted ? .teal.opacity(0.20) : Color(.blue))
            .dropDestination(for: Food.self) { foods, location in
                guard let food = foods.first else {
                    return false
                }
                if let item = data.foodList.filter({$0.id == food.id}).first {
                    data.buddy.feed(item)
                    print(data.buddy.nutrition)
                }
                return true
            } isTargeted: { targeted in
                isTargeted = targeted
            }
            Spacer()
            HStack{
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(data.foodList){ food in
                            CircledFood(food: food)
                                .draggable(food)
                        }
                    }
                }
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    MainTestingView()
        .environmentObject(DataModel())
}
