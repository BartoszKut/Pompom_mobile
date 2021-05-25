//
//  SwiftUIView.swift
//  Pompom-bartek
//
//  Created by Bartosz Kut on 24/05/2021.
//

import SwiftUI

struct AttentionImage: View {
    var attentionImage: Image
    
    @State private var dragAmount = CGSize.zero
    @State private var position = CGSize.zero
    
    var body: some View {
        attentionImage
            .resizable()
            .frame(width: 100, height: 100)
            .offset(x: dragAmount.width + position.width, y: dragAmount.height + position.height)
            .gesture(
                DragGesture(minimumDistance: 1, coordinateSpace: .local)
                    .onChanged({ (value) in
                                self.dragAmount = value.translation
                    })
                    .onEnded({ (value) in
                        self.position.width += value.translation.width
                        self.position.height += value.translation.height
                        self.dragAmount = .zero
                    })
            )
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AttentionImage(attentionImage: Image("attention"))
    }
}
