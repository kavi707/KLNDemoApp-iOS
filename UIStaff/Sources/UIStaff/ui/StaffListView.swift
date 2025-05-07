//
//  StaffListView.swift
//  UIStaff
//
//  Created by Kavimal Wijewardana on 4/28/25.
//

import SwiftUI
import LibUICommon
import LibUIParent
import KvColorPalette_iOS

struct StaffListView: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var staffData: StaffData
    
    public init(staffData: StaffData) {
        self.staffData = staffData
    }
    
    public var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: NSLocalizedString("label.staff", bundle: .module, comment: "a comment"), closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                ScrollView {
                    ForEach(staffData.staffList) { lecturer in
                        LecturerItemView(lecturer: lecturer)
                    }
                }
                
                Spacer()
            }
            .padding(2)
        }
    }
}

struct LecturerItemView: View {
    
    var lecturer: Lecturer
    
    init (lecturer: Lecturer) {
        self.lecturer = lecturer
    }
    
    public var body: some View {
        HStack {
            AsyncImage(url: URL(string: lecturer.imageUrl), content: { image in
                image
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                    .padding(5)
                    .overlay(
                        Circle()
                            .stroke(Color.themePalette.quaternary, lineWidth: 1)
                    )
            }, placeholder: {
                ProgressView()
                    .frame(width: 48, height: 48)
                    .padding(5)
                    .overlay(
                        Circle()
                            .stroke(Color.themePalette.quaternary, lineWidth: 1)
                    )
            })
            
            VStack {
                HStack {
                    Text(lecturer.name)
                        .font(.system(size: 14, weight: .bold))
                    Spacer()
                }
                
                HStack {
                    Text(lecturer.grade)
                        .font(.system(size: 12, weight: .light))
                    Spacer()
                }
                
                HStack {
                    Text(lecturer.email)
                        .font(.system(size: 12, weight: .light))
                        .foregroundStyle(Color.themePalette.secondary)
                    Spacer()
                }
                
            }
            .padding([.leading, .trailing], 5)
            
            Spacer()
        }
        .padding(.all, 12)
        .background(Color.themePalette.background)
        .cornerRadius(10)
        .shadow(color: Color.themePalette.shadow, radius: 5)
        .padding([.leading, .trailing])
        .padding([.bottom, .top], 5)
    }
}

#Preview {
    Text("Test Preview")
}
