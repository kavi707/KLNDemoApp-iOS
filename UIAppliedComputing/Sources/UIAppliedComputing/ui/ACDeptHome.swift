//
//  SwiftUIView.swift
//  UIAppliedComputing
//
//  Created by Kavimal Wijewardana on 4/26/25.
//

import SwiftUI
import KvColorPalette_iOS
import LibUICommon
import LibUIParent

struct ACDeptHome: View {
    
    @State var viewMore: Bool = false
    @State var navigateToStaff: Bool = false
    
    var body: some View {
        ZStack {
            AppBackground()
            
            ScrollView {
                VStack {
                    
                    HeadingTitleView(titleText: NSLocalizedString("label.dept.name", bundle: .module, comment: "a comment"))
                    
                    HStack {
                        Image("dac.home.image", bundle: .module)
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
                    
                    VStack {
                        Text("label.head.msg", bundle: .module)
                            .font(.system(size: 14, weight: .bold))
                        
                        Text(viewMore ? "phrase.head.msg.full" : "phrase.head.msg.short" , bundle: .module)
                            .font(.system(size: 12, weight: .light))
                            .padding([.top], 4)
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                viewMore.toggle()
                            }) {
                                Text(viewMore ? "label.read.less" : "label.read.more", bundle: .module)
                                    .foregroundStyle(Color.themePalette.secondary)
                                    .font(.system(size: 10, weight: .light))
                            }
                        }
                        .padding(5)
                    }
                    .padding()
                    
                    Button(action: {
                        navigateToStaff = true
                    }, label: {
                        AppButtonFillUI(buttonText: NSLocalizedString("label.staff", bundle: .module, comment: "a comment"))
                    })
                    .padding()
                    
                    Spacer()
                }
            }
        }
        .fullScreenCover(isPresented: $navigateToStaff, content: {
            UINavigator.navigateToUIModule(moduleName: "STAFF", entryData: nil)
        })
    }
}

#Preview {
    ACDeptHome()
}
