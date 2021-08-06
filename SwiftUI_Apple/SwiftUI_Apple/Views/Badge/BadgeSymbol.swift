//
//  BadgeSymbol.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/06.
//

import SwiftUI

struct BadgeSymbol: View {
    
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)

    var body: some View {
        GeometryReader { geometry in
            Path{ path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let Spacing = width * 0.030
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topHeight = height * 0.488
                
                path.addLines([
                    CGPoint(x: middle, y: Spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - Spacing),
                    CGPoint(x: middle, y: topHeight / 2 + Spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - Spacing),
                    CGPoint(x: middle, y: Spacing)
                ])
                
                
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + Spacing))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + Spacing),
                    CGPoint(x: Spacing, y: height - Spacing),
                    CGPoint(x: width - Spacing, y: height - Spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + Spacing),
                    CGPoint(x: middle, y: topHeight / 2 + Spacing * 3)
                ])
                
            }
            .fill(Self.symbolColor)
        }
        
    }
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
