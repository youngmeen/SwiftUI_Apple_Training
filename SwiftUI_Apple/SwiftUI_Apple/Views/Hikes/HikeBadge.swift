//
//  HikeBadge.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/06.
//

import SwiftUI

struct HikeBadge: View {
    var name : String
    var body: some View {
        VStack(alignment: .center){
            Badge()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaleEffect(1.0 / 3.0)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(name)
                .font(.caption2)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Hike Badge")
    }
}
