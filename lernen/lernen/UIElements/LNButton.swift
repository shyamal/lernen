//
//  LNButton.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-24.
//

import SwiftUI

struct LNButton: View {
    var title: String
    var action: () -> Void
    // Gradient colors for the 3D effect
        var topColor: Color = .blue
        var bottomColor: Color = .purple
    
    var body: some View {
        Button(title,action: action)
        .buttonStyle(LNButtonStyle())
        .frame(height: 60)
        .padding()
    }
}

#Preview {
    LNButton(title: "Title", action: {})
}
