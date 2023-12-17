//
//  SettingsListView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 07/12/2023.
//

import SwiftUI

struct SettingsListView: View {
    @State private var isNotificationSwitchOn = false
    @State private var isMusicSwitchOn = false
    @State private var sleepStartHour = 22
    @State private var sleepEndHour = 8
    @State private var isExternalNotifSwitchOn = false
    @State private var isScoreHiddenSwitchOn = false
    @State private var isWatchAppSwitchOn = false
        
        var body: some View {
            VStack {
                List {
                    CustomRowView(text: "Notifications", isSwitchOn: $isNotificationSwitchOn)
                    CustomRowView(text: "External notifications", isSwitchOn: $isExternalNotifSwitchOn)
                    CustomRowView(text: "Watch app activated", isSwitchOn: $isWatchAppSwitchOn)
                    SleepOptionRowView(startHour: $sleepStartHour, endHour: $sleepEndHour)
                    CustomRowView(text: "Hide score", isSwitchOn: $isScoreHiddenSwitchOn)
                    CustomRowView(text: "Music", isSwitchOn: $isMusicSwitchOn)
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
        @Binding var startHour: Int
        @Binding var endHour: Int
        
        var body: some View {
            HStack {
                Text("Sleep")
                Spacer()
                Picker("Début", selection: $startHour) {
                    ForEach(0..<24) { hour in
                        Text("\(hour)h\(hour == 1 ? "" : "")")
                    }
                }
                .labelsHidden()
                .pickerStyle(MenuPickerStyle())
                .onChange(of: startHour) { newValue in
                    if newValue > endHour {
                        endHour = newValue
                    }
                }
                
                Picker("Fin", selection: $endHour) {
                    ForEach(0..<24) { hour in
                        Text("\(hour)h\(hour == 1 ? "" : "")")
                    }
                }
                .labelsHidden()
                .pickerStyle(MenuPickerStyle())
                .onChange(of: endHour) { newValue in
                    if newValue < startHour {
                        startHour = newValue
                    }
                }
            }
        }
    }

#Preview {
    SettingsListView()
}
