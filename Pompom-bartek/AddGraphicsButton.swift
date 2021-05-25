//
//  AddGraphicButton.swift
//  Pompom-bartek
//
//  Created by Bartosz Kut on 24/05/2021.
//

import SwiftUI

struct AddGraphicButton: View {
    @State var addAttentionImage = false
        
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Button(action: {
                    self.addAttentionImage = true
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 40.0, height: 40, alignment: .leading)
                        .edgesIgnoringSafeArea(.all)
                }
                .padding()
                Spacer()
              
                if addAttentionImage == true {
                    AttentionImage(attentionImage: Image("attention"))
                }
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
