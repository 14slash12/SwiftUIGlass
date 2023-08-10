//
//  GlassLazyHGrid.swift
//  
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI

public struct GlassLazyHGrid<T: Identifiable, Content: View>: View {
    let items: [T]
    let rows: [GridItem]
    let cornerRadius: CGFloat

    let corners: UIRectCorner?
    let fill: Color
    let opacity: CGFloat
    let shadowRadius: CGFloat

    let spacing: CGFloat?
    let content: (T) -> Content

    public init(items: [T], rows: [GridItem], cornerRadius: CGFloat, corners: UIRectCorner? = .allCorners, fill: Color = .white, opacity: CGFloat = 0.25, shadowRadius: CGFloat = 10.0, spacing: CGFloat?, @ViewBuilder content: @escaping (T) -> Content) {
        self.items = items
        self.rows = rows
        self.cornerRadius = cornerRadius

        self.corners = corners
        self.fill = fill
        self.opacity = opacity
        self.shadowRadius = shadowRadius

        self.spacing = spacing
        self.content = content
    }

    public var body: some View {
        LazyHGrid(rows: rows, spacing: spacing) {
            ForEach(items) { item in
                GlassPane(cornerRadius: cornerRadius) {
                    content(item)
                }
            }
        }
    }
}

