//
//  StaffListView.swift
//  UIStaff
//
//  Created by Kavimal Wijewardana on 4/28/25.
//

import SwiftUI
import LibUICommon

struct StaffListView: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    public var body: some View {
        VStack {
            HeadingTitleViewWithX(titleText: NSLocalizedString("label.staff", bundle: .module, comment: "a comment"), closeAction: {
                presentationMode.wrappedValue.dismiss()
            })
            
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    StaffListView()
}
