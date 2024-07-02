//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by MuhammadYusuf on 30/06/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination:  FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            
            .navigationTitle("Apple Frameworks")

        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

