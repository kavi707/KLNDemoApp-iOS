//
//  SwiftUIView.swift
//  UIDashboard
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import SwiftUI
import LibUICommon

struct DasboardTabView: View {
    
    @State private var selectedColor = Color.white
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                TabView {
                    SampleView()
                        .tabItem {
                            Label("Color Palette", systemImage: "square.grid.3x3")
                        }
                    SampleView()
                        .tabItem {
                            Label("Theme Gen", systemImage: "theatermask.and.paintbrush")
                        }
                }
            }
        }
    }
}

#Preview {
    DasboardTabView()
}
