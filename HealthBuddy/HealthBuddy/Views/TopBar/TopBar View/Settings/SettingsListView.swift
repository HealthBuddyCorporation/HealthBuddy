//
//  SettingsListView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//
//  *************************************************************************************
//  *                       ⚠️⚠️⚠️⚠️⚠️ UPDATED! ⚠️⚠️⚠️⚠️⚠️                             *
//  *   Corection des positions des éléments et de leurs organisations dans le code     *
//  *                                                   Raphaël 15/12/2023 - 00:35      *
//  *************************************************************************************
//
import SwiftUI

struct SettingsListView: View {
    
    @State private var isNotificationSwitchOn = false
    @State private var isMusicSwitchOn = false
    @State private var isNotifExternesSwitchOn = false
    @State private var isScoreHiddenSwitchOn = false
    @State private var isWatchAppSwitchOn = false
    @State private var sleepHours = 7
    
    var body: some View {
        VStack{
            List {
                CustomRowView(text: "Notifications", isSwitchOn: $isNotificationSwitchOn)
                CustomRowView(text: "Music", isSwitchOn: $isMusicSwitchOn)
                CustomRowView(text: "External notification", isSwitchOn: $isNotifExternesSwitchOn)
                CustomRowView(text: "Hidden score", isSwitchOn: $isScoreHiddenSwitchOn)
                CustomRowView(text: "Watch app", isSwitchOn: $isWatchAppSwitchOn)
                SleepOptionRowView(hours: $sleepHours)
                
            }
        }
    }
}

struct CustomRowView: View {
    var text: String
    @Binding var isSwitchOn: Bool

    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Toggle("", isOn: $isSwitchOn)
                .labelsHidden()
        }
    }
}

struct SleepOptionRowView: View {
    @Binding var hours: Int
    
    var body: some View {
        HStack {
            Text("Sleep")
            Spacer()
            Picker("", selection: $hours) {
                ForEach(1..<8) { hour in
                    Text("\(hour)h\(hour == 1 ? "" : "")")
                }
            }
            .labelsHidden()
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
