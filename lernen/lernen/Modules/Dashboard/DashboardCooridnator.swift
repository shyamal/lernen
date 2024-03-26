//
//  DashboardCoridnator.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-24.
//

import SwiftUI

class DashboardCoordinator {
    
    func start() -> some View {
        DashboardView(viewModel: DashboardViewModel())
    }
}
