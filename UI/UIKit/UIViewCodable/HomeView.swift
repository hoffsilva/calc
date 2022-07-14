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
    
    private lazy var verticalContentStackView: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.vertical)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var LCDDisplayView: UIView = {
        UIViewBuilderImp()
            .build()
    }()
    
    private lazy var LCDDisplayLabel: UILabel = {
        UILabelBuilderImp()
            .prepareForConstraints()
            .withAlignment(.right)
            .withText("0")
            .withFont(.systemFont(ofSize: 100))
            .build()
    }()
    
    private lazy var horizontalStackViewLineOne: UIStackView = {
        UIStackViewBuilderImp()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonAC: UIButton = {
        UIButtonBuilderImp()
            .withTitle("AC", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPlusMinus: UIButton = {
        UIButtonBuilderImp()
            .withTitle("+/-", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPercent: UIButton = {
        UIButtonBuilderImp()
            .withTitle("%", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonDivision: UIButton = {
        UIButtonBuilderImp()
            .withTitle("/", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineTwo: UIStackView = {
        UIStackViewBuilderImp()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonSeven: UIButton = {
        UIButtonBuilderImp()
            .withTitle("AC", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonEight: UIButton = {
        UIButtonBuilderImp()
            .withTitle("+/-", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonNine: UIButton = {
        UIButtonBuilderImp()
            .withTitle("%", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonMultiply: UIButton = {
        UIButtonBuilderImp()
            .withTitle("/", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineThree: UIStackView = {
        UIStackViewBuilderImp()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonFour: UIButton = {
        UIButtonBuilderImp()
            .withTitle("AC", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonFive: UIButton = {
        UIButtonBuilderImp()
            .withTitle("+/-", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonSix: UIButton = {
        UIButtonBuilderImp()
            .withTitle("%", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonMinus: UIButton = {
        UIButtonBuilderImp()
            .withTitle("/", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    
    private lazy var horizontalStackViewLineFour: UIStackView = {
        UIStackViewBuilderImp()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonOne: UIButton = {
        UIButtonBuilderImp()
            .withTitle("1", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonTwo: UIButton = {
        UIButtonBuilderImp()
            .withTitle("2", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonThree: UIButton = {
        UIButtonBuilderImp()
            .withTitle("3", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPlus: UIButton = {
        UIButtonBuilderImp()
            .withTitle("4", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineFive: UIStackView = {
        UIStackViewBuilderImp()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonZero: UIButton = {
        UIButtonBuilderImp()
            .withTitle("1", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonDot: UIButton = {
        UIButtonBuilderImp()
            .withTitle("2", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonEqual: UIButton = {
        UIButtonBuilderImp()
            .withTitle("3", state: .normal)
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
        addSubview(verticalContentStackView)
        verticalContentStackView.addArrangedSubview(LCDDisplayView)
        LCDDisplayView.addSubview(LCDDisplayLabel)
        setupHorizontalStackViewLineOneViewsHierarchy()
        setupHorizontalStackViewLineTwoViewsHierarchy()
        setupHorizontalStackViewLineThreeViewsHierarchy()
        setupHorizontalStackViewLineFourViewsHierarchy()
        setupHorizontalStackViewLineFiveViewsHierarchy()
    }
    
    func setupConstraints() {
        verticalContentStackView.pinSafeBottom()
        verticalContentStackView.centerHorizontally()
        verticalContentStackView.width(with: self.frame.width)
        
        LCDDisplayLabel.pinTop()
        LCDDisplayLabel.pinRight(10)
        LCDDisplayLabel.pinBottom()
        LCDDisplayLabel.pinLeft(10)
        
        setupConstraintsButtonsLineOne()
        setupConstraintsButtonsLineTwo()
        setupConstraintsButtonsLineThree()
        setupConstraintsButtonsLineFour()
        setupConstraintsButtonsLineFive()
    }
    
    private func setupHorizontalStackViewLineOneViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineOne)
        horizontalStackViewLineOne.addArrangedSubview(buttonAC)
        horizontalStackViewLineOne.addArrangedSubview(buttonPlusMinus)
        horizontalStackViewLineOne.addArrangedSubview(buttonPercent)
        horizontalStackViewLineOne.addArrangedSubview(buttonDivision)
    }
    
    private func setupHorizontalStackViewLineTwoViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineTwo)
        horizontalStackViewLineTwo.addArrangedSubview(buttonSeven)
        horizontalStackViewLineTwo.addArrangedSubview(buttonEight)
        horizontalStackViewLineTwo.addArrangedSubview(buttonNine)
        horizontalStackViewLineTwo.addArrangedSubview(buttonMultiply)
    }
    
    private func setupHorizontalStackViewLineThreeViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineThree)
        horizontalStackViewLineThree.addArrangedSubview(buttonFour)
        horizontalStackViewLineThree.addArrangedSubview(buttonFive)
        horizontalStackViewLineThree.addArrangedSubview(buttonSix)
        horizontalStackViewLineThree.addArrangedSubview(buttonMinus)
    }
    
    private func setupHorizontalStackViewLineFourViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineFour)
        horizontalStackViewLineFour.addArrangedSubview(buttonOne)
        horizontalStackViewLineFour.addArrangedSubview(buttonTwo)
        horizontalStackViewLineFour.addArrangedSubview(buttonThree)
        horizontalStackViewLineFour.addArrangedSubview(buttonPlus)
    }
    
    private func setupHorizontalStackViewLineFiveViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineFive)
        horizontalStackViewLineFive.addArrangedSubview(buttonZero)
        horizontalStackViewLineFive.addArrangedSubview(buttonDot)
        horizontalStackViewLineFive.addArrangedSubview(buttonEqual)
    }
    
    private func setupConstraintsButtonsLineOne() {
        buttonAC.setSize(size: buttonSize)
        buttonAC.aspectRatio(with: 1)
        buttonPlusMinus.setSize(size: buttonSize)
        buttonPlusMinus.aspectRatio(with: 1)
        buttonPercent.setSize(size: buttonSize)
        buttonPercent.aspectRatio(with: 1)
        buttonDivision.setSize(size: buttonSize)
        buttonDivision.aspectRatio(with: 1)
    }
    
    private func setupConstraintsButtonsLineTwo() {
        buttonSeven.setSize(size: buttonSize)
        buttonSeven.aspectRatio(with: 1)
        buttonEight.setSize(size: buttonSize)
        buttonEight.aspectRatio(with: 1)
        buttonNine.setSize(size: buttonSize)
        buttonNine.aspectRatio(with: 1)
        buttonMultiply.setSize(size: buttonSize)
        buttonMultiply.aspectRatio(with: 1)
    }
    
    private func setupConstraintsButtonsLineThree() {
        buttonFour.setSize(size: buttonSize)
        buttonFour.aspectRatio(with: 1)
        buttonFive.setSize(size: buttonSize)
        buttonFive.aspectRatio(with: 1)
        buttonSix.setSize(size: buttonSize)
        buttonSix.aspectRatio(with: 1)
        buttonMinus.setSize(size: buttonSize)
        buttonMinus.aspectRatio(with: 1)
    }
    
    private func setupConstraintsButtonsLineFour() {
        buttonOne.setSize(size: buttonSize)
        buttonOne.aspectRatio(with: 1)
        buttonTwo.setSize(size: buttonSize)
        buttonTwo.aspectRatio(with: 1)
        buttonThree.setSize(size: buttonSize)
        buttonThree.aspectRatio(with: 1)
        buttonPlus.setSize(size: buttonSize)
        buttonPlus.aspectRatio(with: 1)
    }
    
    private func setupConstraintsButtonsLineFive() {
        buttonZero.setSize(size: buttonSize)
        buttonZero.aspectRatio(with: 2.10)
        buttonDot.setSize(size: buttonSize)
        buttonDot.aspectRatio(with: 1)
        buttonEqual.setSize(size: buttonSize)
        buttonEqual.aspectRatio(with: 1)
    }
    
}
