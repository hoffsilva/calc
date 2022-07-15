//
//  HomeViewController.swift
//  Calc
//
//  Created by Hoff Silva on 2022-07-14.
//

import UIKit
import UI

class HomeViewController: UIViewController {
    
    private var viewCodable: HomeView
    
    // MARK: - Init
    
    required init(viewCodable: HomeView) {
        self.viewCodable = viewCodable
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = viewCodable
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

