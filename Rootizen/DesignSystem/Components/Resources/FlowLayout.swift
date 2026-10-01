//
//  FlowLayout.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//
//  Generic wrapping layout — lays children left-to-right, wraps to a new
//  row when a child would overflow the available width. Not specific to
//  vocabulary; reusable anywhere chips/tags need to wrap.
//

import SwiftUI

struct FlowLayout: Layout {
    var spacing: CGFloat = 8

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let width = proposal.width ?? .infinity
        var position = CGPoint.zero
        var lineHeight: CGFloat = 0
        var maxWidth: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)

            if position.x + size.width > width, position.x > 0 {
                position.x = 0
                position.y += lineHeight + spacing
                lineHeight = 0
            }

            position.x += size.width + spacing
            lineHeight = max(lineHeight, size.height)
            maxWidth = max(maxWidth, position.x - spacing)
        }

        return CGSize(width: maxWidth, height: position.y + lineHeight)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var position = CGPoint(x: bounds.minX, y: bounds.minY)
        var lineHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)

            if position.x + size.width > bounds.maxX, position.x > bounds.minX {
                position.x = bounds.minX
                position.y += lineHeight + spacing
                lineHeight = 0
            }

            subview.place(at: position, proposal: .unspecified)
            position.x += size.width + spacing
            lineHeight = max(lineHeight, size.height)
        }
    }
}
