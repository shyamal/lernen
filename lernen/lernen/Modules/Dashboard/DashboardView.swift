//
//  DashboardView.swift
//  lernen
//
//  Created by Shyamal Munasinghe on 2024-03-24.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: DashboardViewModel
    
    var body: some View {
        Text("Dashboard")
    }
}

#Preview {
    DashboardView(viewModel: DashboardViewModel())
}
