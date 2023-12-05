//
//  ItemThreeView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 27/11/2023.
//

import SwiftUI

struct ScoreView: View {
    
    @State private var selectedSegment = 0
    let nationalItems = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6","Item 7", "Item 8", "Item 9", "Item 10"]
    let segment2Texts = ["Text 1", "Text 2", "Text 3"]
    let segment3Image = Image(systemName: "photo")

    
    var body: some View {
        VStack {
            
            Text("LeaderBoard")
                .font(.title)
            
                   Picker("Segments", selection: $selectedSegment) {
                       Text("Friends").tag(0)
                       Text("Local").tag(1)
                       Text("National").tag(2)
                   }
                   .pickerStyle(SegmentedPickerStyle())
                   .padding()

                   switch selectedSegment {
                   case 0:
                       List(nationalItems, id: \.self) { item in
                           
                           DisclosureGroup(item) {
                               HStack{
                                   Text("Last run :")
                                   Text("Today")
                               }
                               HStack{
                                   Text("Record")
                                   Text("2300 Budd")
                               }
                               HStack{
                                   Text("Like :")
                                   Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                                       /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                   }
                               }
                           }
                       }
                       .padding()

                   case 1:
                       ForEach(segment2Texts, id: \.self) { text in
                           Text(text)
                       }
                       .padding()

                       // Additional content for Segment 2, if needed
                       List {
                           Text("Item 1")
                           Text("Item 2")
                           Text("Item 3")
                           Text("Item 4")
                           Text("Item 5")
                           Text("Item 6")
                           Text("Item 7")
                           Text("Item 8")
                           Text("Item 9")
                           Text("Item 10")
                       }
                       .padding()

                   case 2:
                       segment3Image
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 100)
                           .padding()

                       // Additional content for Segment 3, if needed
                       List {
                           Text("Item 1")
                           Text("Item 2")
                           Text("Item 3")
                           Text("Item 4")
                           Text("Item 5")
                           Text("Item 6")
                           Text("Item 7")
                           Text("Item 8")
                           Text("Item 9")
                           Text("Item 10")
                       }
                       .padding()

                   default:
                       EmptyView()
                   }
               }
           }
       }

#Preview {
    ScoreView()
}
