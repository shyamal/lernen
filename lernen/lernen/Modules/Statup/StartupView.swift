//
//  StartupView.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-22.
//

import SwiftUI
import Combine

struct StartupView: View {
    @ObservedObject var coordinator: AppCoordinator
    
    @State private var navigateToNextView = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(.all)
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                coordinator.goToDashboard()
            }
        }
    }
}

#Preview {
    StartupView(coordinator: AppCoordinator())
}
