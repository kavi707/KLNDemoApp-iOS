//
//  StaffListView.swift
//  UIStaff
//
//  Created by Kavimal Wijewardana on 4/28/25.
//

import SwiftUI
import LibUICommon

struct StaffListView: View {
    
    //@Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    //public init() {}
    
    public var body: some View {
        VStack {
            HeadingTitleViewWithX(titleText: "Staff", closeAction: {
                //presentationMode.wrappedValue.dismiss()
            })
            
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    StaffListView()
}
