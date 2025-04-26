//
//  SwiftUIView.swift
//  UIDashboard
//
//  Created by Kavimal Wijewardana on 4/25/25.
//

import SwiftUI
import LibUICommon

struct SampleView: View {
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
        }
        
    }
}

#Preview {
    SampleView()
}
