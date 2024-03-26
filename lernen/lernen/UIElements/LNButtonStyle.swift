//
//  LNButtonStyle.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-24.
//

import SwiftUI

struct LNButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            
            let offset: CGFloat = 5
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.black)
                .offset(x:1, y:offset)
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.gray)
                .offset(y:configuration.isPressed ? offset : 0)
            
            configuration.label
                .offset(y:configuration.isPressed ? offset : 0)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            
        }
        .compositingGroup()
        .shadow(radius: 6, y: 4)
    }
}

#Preview {
    Button("Button") {
       
    }
    .frame(width: 100, height: 30)
    .buttonStyle(LNButtonStyle())
}
