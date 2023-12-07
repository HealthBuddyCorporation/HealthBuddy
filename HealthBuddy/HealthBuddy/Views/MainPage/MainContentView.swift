//
//  MainContentView.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 21/11/2023.
//

import SwiftUI

struct MainContentView: View {
    @EnvironmentObject var data :DataModel
    @State var isTargeted = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .opacity(0.4)
                .frame(width: 430, height: 706)
                .background()
                .id("MainContent")
            
            VStack{
                HStack{
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 53, height: 13)
                                .cornerRadius(3.0)
                            
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 50 * (data.buddy.hp/data.buddy.maxHP), height: 10)
                                .cornerRadius(3.0)
                        }
                        
                        Text("\(String(format: "%.0f", data.buddy.hp))/ \(String(format: "%.0f", data.buddy.maxHP))")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                    }.padding(.trailing)
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 53, height: 13)
                                .cornerRadius(3.0)
                            
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width: 50 * (data.buddy.hygiene/100), height: 10)
                                .cornerRadius(3.0)
                        }
                        
                        Text("\(String(format: "%.0f", data.buddy.hygiene)) %")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                        
                    }.padding(.trailing)
                    
                    VStack{
                        ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 53, height: 13)
                                .cornerRadius(3.0)
                            
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: 50 * (data.buddy.nutrition/100), height: 10)
                            
                        }
                        
                        Text("\(String(format: "%.0f", data.buddy.nutrition)) %")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                        
                    }.padding(.trailing)
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 53, height: 13)
                                .cornerRadius(3.0)
                            
                            Rectangle()
                                .foregroundColor(.yellow)
                                .frame(width: 50 * (data.buddy.happiness/100), height: 10)
                            
                        }
                        Text("\(String(format: "%.0f", data.buddy.happiness)) %")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                    }
                }
            }
            .offset(y: -310)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
                .offset(y: 200)
                .dropDestination(for: Droppable.self) { items, location in
                    print(items.self)
                    return data.handleDrop(items)
                } isTargeted: { targeted in
                    isTargeted = targeted
                }
        }
    }
}

#Preview {
    MainContentView()
}
