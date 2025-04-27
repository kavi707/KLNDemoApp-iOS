//
//  SwiftUIView.swift
//  UIDashboard
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import SwiftUI
import LibUICommon
import LibUIParent

struct DasboardTabView: View {
    
    @State private var selectedColor = Color.white
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                TabView {
                    UINavigator.navigateToUIModule(moduleName: "APPLIED_COMPUTING", entryData: nil)
                        .tabItem {
                            Image(systemName: "aqi.medium")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            Text("DAC")
                        }
                    UINavigator.navigateToUIModule(moduleName: "SOFTWARE_ENGINEERING", entryData: nil)
                        .tabItem {
                            Image(systemName: "desktopcomputer.and.macbook")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            Text("DSE")
                        }
                    UINavigator.navigateToUIModule(moduleName: "COMPUTER_SYSTEM", entryData: nil)
                        .tabItem {
                            Image(systemName: "bonjour")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            Text("DCSE")
                        }
                }
            }
        }
    }
}

#Preview {
    DasboardTabView()
}
