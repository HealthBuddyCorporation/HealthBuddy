//
//  CustomTabBar.swift
//  HealthBudy
//
//  Created by Raphael Fassotte on 26/09/2023.
//

import SwiftUI

//MARK: Test

struct CustomTabBar: View {
    
    @Binding var index : Int
    
    var body: some View {
        
            HStack{
                
                // Bouton 1 ----------------------------------------------------------
                Button(action: {
                    self.index = 0
                }) {
                    VStack {
                        Image(systemName: "house.lodge.circle")
                            .font(.system(size: 30))
                        Text("Item 1")
                            .font(.system(size: 10))
                    }
                    .padding(.vertical, 8)
                    
                }
                .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
                .offset(x: 20)
                Spacer(minLength: 0)
                
                // Bouton 2 ----------------------------------------------------------
                Button(action: {
                    self.index = 1
                }) {
                    VStack {
                        Image(systemName: "figure.walk.circle.fill")
                            .font(.system(size: 30))
                        Text("Item 2")
                            .font(.system(size: 10))
                    }
                }
                .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
                .offset(x: 20)
                Spacer(minLength: 0)
                
                // Bouton 3 ----------------------------------------------------------
                Button(action: {
                    
                }) {
                    VStack {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50))
                        Text("Popup Menu")
                            .font(.system(size: 10))
                    }
                }
                .offset(y: -28)
                Spacer(minLength: 0)
                
                // Bouton 4 ----------------------------------------------------------
                Button(action: {
                    self.index = 2
                }) {
                    VStack {
                        Image(systemName: "list.bullet.circle.fill")
                            .font(.system(size: 30))
                        Text("Item 3")
                            .font(.system(size: 10))
                    }
                }
                .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
                .offset(x: -20)
                Spacer(minLength: 0)
                
                // Bouton 5 ----------------------------------------------------------
                Button(action: {
                    self.index = 3
                }) {
                    VStack {
                        Image(systemName: "gear.circle.fill")
                            .font(.system(size: 30))
                        Text("Item 4")
                            .font(.system(size: 10))
                    }
                }
                .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
                .offset(x: -20)
            }
            .padding(.top, 35)
            .background(.thinMaterial)
            .ignoresSafeArea(edges: .all)
            .clipShape(CShape())
        }
        }
    
    
    struct CustomTabBar_Previews: PreviewProvider {
        static var previews: some View {
            CustomTabBar(index: .constant(0))
        }
    }
    
    struct CShape : Shape {
        func path(in rect: CGRect) -> Path {
            return Path{path in
                path.move(to: CGPoint(x: 0, y: 35))
                path.addLine(to: CGPoint(x: 0, y: rect.height))
                path.addLine(to: CGPoint(x: rect.width, y: rect.height))
                path.addLine(to: CGPoint(x: rect.width, y: 35))
                
                path.addArc(center: CGPoint(x: rect.width / 2, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            }
        }
    }
