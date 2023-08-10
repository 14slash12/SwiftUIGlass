//
//  GlassCell.swift
//  
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI

struct GlassCellModifier: ViewModifier {
    var cornerRadius: CGFloat
    var corners: UIRectCorner?

    func body(content: Content) -> some View {
        content
            .listRowBackground(GlassView(cornerRadius: cornerRadius, corners: corners, shadowRadius: 0))
    }
}

//MARK: - Extension

extension View {
    public func glassCell(cornerRadius: CGFloat, corners: UIRectCorner? = nil) -> some View {
        modifier(GlassCellModifier(cornerRadius: cornerRadius, corners: corners))
    }
}
