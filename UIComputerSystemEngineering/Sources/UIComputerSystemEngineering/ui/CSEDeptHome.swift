//
//  SwiftUIView.swift
//  UIAppliedComputing
//
//  Created by Kavimal Wijewardana on 4/26/25.
//

import SwiftUI
import KvColorPalette_iOS
import LibUICommon

struct CSEDeptHome: View {
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                
                HeadingTitleView(titleText: "Department of Computer Systems Engineering")
                
                HStack {
                    Image("dcse.home.image", bundle: .module)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .scaledToFit()
                }
                .padding(.all, 12)
                .background(Color.themePalette.background)
                .cornerRadius(10)
                .shadow(color: Color.themePalette.shadow, radius: 5)
                .padding([.leading, .trailing])
                .padding([.bottom, .top], 5)
                
                Spacer()
            }
        }
    }
}

#Preview {
    CSEDeptHome()
}
