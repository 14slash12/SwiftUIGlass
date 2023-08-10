//
//  GlassPane.swift
//  
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI

public struct GlassPane<Content: View>: View {
    let cornerRadius: CGFloat
    let corners: UIRectCorner?
    let fill: Color
    let opacity: CGFloat
    let shadowRadius: CGFloat
    let content: Content

    public init(cornerRadius: CGFloat, corners: UIRectCorner? = .allCorners, fill: Color = .white, opacity: CGFloat = 0.25, shadowRadius: CGFloat = 10.0, @ViewBuilder content: @escaping () -> Content) {
        self.cornerRadius = cornerRadius
        self.corners = corners
        self.fill = fill
        self.opacity = opacity
        self.shadowRadius = shadowRadius
        self.content = content()
    }

    public var body: some View {
        ZStack {
            GlassView(cornerRadius: cornerRadius, corners: corners, fill: fill, opacity: opacity, shadowRadius: shadowRadius)

            content
        }
    }
}

struct GlassPane_Previews: PreviewProvider {
    static var previews: some View {
        GlassPane(cornerRadius: 20.0) {
            Text("Hello World! 🌐")
        }
    }
}
