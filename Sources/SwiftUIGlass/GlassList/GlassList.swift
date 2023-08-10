//
//  GlassList.swift
//  
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI

public struct GlassList<T: Identifiable, Content: View>: View {
    var items: [T]
    let cornerRadius: CGFloat
    let delete: (IndexSet) -> Void
    let lastCellSpacing: CGFloat
    var rowContent: (T) -> Content

    public init(items: [T], cornerRadius: CGFloat, onDelete: @escaping (IndexSet) -> Void = {_ in }, lastCellSpacing: CGFloat = 25, @ViewBuilder rowContent: @escaping (T) -> Content) {
        self.items = items
        self.cornerRadius = cornerRadius
        self.delete = onDelete
        self.lastCellSpacing = lastCellSpacing
        self.rowContent = rowContent
    }

    public var body: some View {
        List {
            ForEach(items) { item in
                self.rowContent(item)
                    .glassCell(cornerRadius: cornerRadius)
            }
            .onDelete(perform: delete)
        }
        .listStyle(.plain)
    }
}
