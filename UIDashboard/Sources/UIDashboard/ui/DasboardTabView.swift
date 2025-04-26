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
                            Label("DAC", systemImage: "square.grid.3x3")
                        }
                    UINavigator.navigateToUIModule(moduleName: "SOFTWARE_ENGINEERING", entryData: nil)
                        .tabItem {
                            Label("DSE", systemImage: "theatermask.and.paintbrush")
                        }
                    UINavigator.navigateToUIModule(moduleName: "COMPUTER_SYSTEM", entryData: nil)
                        .tabItem {
                            Label("DCSE", systemImage: "theatermask.and.paintbrush")
                        }
                }
            }
        }
    }
}

#Preview {
    DasboardTabView()
}
