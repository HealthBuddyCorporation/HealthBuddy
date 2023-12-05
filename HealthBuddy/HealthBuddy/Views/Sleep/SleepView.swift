//
//  SleepView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 04/12/2023.
//

import SwiftUI

struct SleepView: View {
    var body: some View {
        ZStack{
            PopupBackgroundBox()
            ZStack{
                Rectangle()
            }
            VStack{
                VStack{
                    Text ("Chuuuuuttt!")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    Text ("$name se repose")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                }.padding(EdgeInsets(top: 100, leading: 0, bottom: -100, trailing: 0))
                ZStack{
                    PopupContentBackgroundBox()
                    
                    VStack{
                        
                        Image(systemName: "bed.double.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        
                        HStack{
                            Text("Z")
                                .font(.system(size: 17))
                                .foregroundColor(.white)
                            Text("Z")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                            Text("Z")
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                            Text("Z")
                                .font(.system(size: 11))
                                .foregroundColor(.white)
                            
                        }
                        
                        Text("Citation prise sur une api?")
                            .font(.system(size: 17))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }
        }
    }
}

#Preview {
    SleepView()
}
