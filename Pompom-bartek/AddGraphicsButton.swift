//
//  AddGraphicButton.swift
//  Pompom-bartek
//
//  Created by Bartosz Kut on 24/05/2021.
//

import SwiftUI

struct AddGraphicButton: View {
    
    
    @State var quantityOfObjects = 0
    @State var images: [UIImage] = []
        
    var body: some View {
        VStack {
            ZStack {
                ForEach(0..<quantityOfObjects, id: \.self) { number in
                    AttentionImage(attentionImage: Image("attention"))
                }
            }
            
            Spacer()
            Divider()
            
            HStack{
                Button(action: {
                    quantityOfObjects += 1
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 40.0, height: 40)
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct AddGraphicButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AddGraphicButton()
        }
    }
}
