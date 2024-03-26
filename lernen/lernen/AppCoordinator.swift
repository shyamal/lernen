//
//  AppCordinator.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-22.
//

import SwiftUI
import Combine


class AppCoordinator: ObservableObject {
    @Published var currentState: AppState = .startup
    
    enum AppState {
        case startup
        case dashboard
        case userFlow
    }
    
    @ViewBuilder
    func contentView() -> some View {
        switch currentState {
        case .startup:
            StartupView(coordinator: self)
        case .dashboard:
            DashboardCoordinator().start()
        case .userFlow:
            UserFlowCoordinator().start()
        }
    }
    
    func goToDashboard() {
        currentState = .dashboard
    }
    
    func goToUserFlow() {
        currentState = .userFlow
    }
}
