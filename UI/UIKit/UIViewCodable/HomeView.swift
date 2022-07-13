//
//  HomeView.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

final class HomeView: UIView {
    
    private lazy var buttonSize: CGSize = {
        CGSize(width: 78, height: 78)
    }()
    
    private lazy var button: UIButton = {
        UIButtonBuilderImp()
            .withTitle("1", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
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
        addSubview(button)
    }
    
    func setupConstraints() {
        button.setSize(size: buttonSize)
    }
    
}
