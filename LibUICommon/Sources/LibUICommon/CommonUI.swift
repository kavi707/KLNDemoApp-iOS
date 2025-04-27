//
//  CommonUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/27/25.
//
import SwiftUI
import KvColorPalette_iOS

public struct AppBackground: View {
    
    public init () {}
    
    public var body: some View {
        Color.themePalette.background
            .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - UI component for TextField
public struct AppTextFieldOutlineUI: View {
    
    private var hint: String!
    @State private var valueText: Binding<String>
    @State private var isDisable = false
    
    public init(hint: String, valueText: Binding<String>!) {
        self.hint = hint
        self.valueText = valueText
    }
    
    public var body: some View {
        TextField(self.hint, text: self.valueText)
            .foregroundColor(Color.themePalette.primary)
            .padding(.all)
            .frame(height: 45)
            .padding(4)
            .disabled(isDisable)
            .overlay(
                RoundedRectangle(cornerRadius: 5.0)
                    .strokeBorder(Color.themePalette.primary, style: StrokeStyle(lineWidth: 1.0))
            )
    }
}
