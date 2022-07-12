//
//  HomeView.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

final class HomeView: UIView {
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: UIViewCodable {
    
    func setupViewsHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
}
