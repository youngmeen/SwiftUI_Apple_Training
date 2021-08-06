//
//  ImageShowingView.swift
//  SwiftUI_Apple
//
//  Created by developer on 2021/08/06.
//

import SwiftUI

struct ImageShowingView: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct ImageShowingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageShowingView(image: Image("image"))
    }
}
