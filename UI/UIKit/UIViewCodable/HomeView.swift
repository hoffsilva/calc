//
//  HomeView.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

public final class HomeView: UIView {
    
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
            .prepareForConstraints()
            .withBackgroundColor(.white)
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
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonAC: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("AC", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPlusMinus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("+/-", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPercent: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("%", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonDivision: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("/", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineTwo: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonSeven: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("7", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonEight: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("8", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonNine: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("9", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonMultiply: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("*", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineThree: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonFour: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("4", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonFive: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("5", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonSix: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("6", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonMinus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("-", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    
    private lazy var horizontalStackViewLineFour: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonOne: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("1", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonTwo: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("2", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonThree: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("3", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonPlus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("+", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var horizontalStackViewLineFive: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var buttonZero: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("0", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonDot: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle(".", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    private lazy var buttonEqual: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("=", state: .normal)
            .withBackgroundColor(.systemYellow)
            .build()
    }()
    
    // MARK: - Initialization
    
    public init() {
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: UIViewCodable {
    
    public func setupViewsHierarchy() {
        addSubview(verticalContentStackView)
        verticalContentStackView.addArrangedSubview(LCDDisplayView)
        LCDDisplayView.addSubview(LCDDisplayLabel)
        setupHorizontalStackViewLineOneViewsHierarchy()
        setupHorizontalStackViewLineTwoViewsHierarchy()
        setupHorizontalStackViewLineThreeViewsHierarchy()
        setupHorizontalStackViewLineFourViewsHierarchy()
        setupHorizontalStackViewLineFiveViewsHierarchy()
    }
    
    public func setupConstraints() {
        verticalContentStackView.pinSafeBottom()
        verticalContentStackView.centerHorizontally()
        verticalContentStackView.constraintWidth(toAnchor: self.widthAnchor)
        
        setupConstraintsButtonsLineOne()
        setupConstraintsButtonsLineTwo()
        setupConstraintsButtonsLineThree()
        setupConstraintsButtonsLineFour()
        setupConstraintsButtonsLineFive()
        
        LCDDisplayLabel.pinTop()
        LCDDisplayLabel.pinRight(10)
        LCDDisplayLabel.pinBottom()
        LCDDisplayLabel.pinLeft(10)
    }
    
    public func additionalConfiguration() {
        self.backgroundColor = .red
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
        buttonAC.constraintWidth(toAnchor: buttonAC.heightAnchor, multiplier: 1)
        buttonPlusMinus.constraintWidth(toAnchor: buttonPlusMinus.heightAnchor, multiplier: 1)
        buttonPercent.constraintWidth(toAnchor: buttonPercent.heightAnchor, multiplier: 1)
        buttonDivision.constraintWidth(toAnchor: buttonDivision.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineTwo() {
        buttonSeven.constraintWidth(toAnchor: buttonSeven.heightAnchor, multiplier: 1)
        buttonEight.constraintWidth(toAnchor: buttonEight.heightAnchor, multiplier: 1)
        buttonNine.constraintWidth(toAnchor: buttonNine.heightAnchor, multiplier: 1)
        buttonMultiply.constraintWidth(toAnchor: buttonMultiply.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineThree() {
        buttonFour.constraintWidth(toAnchor: buttonFour.heightAnchor, multiplier: 1)
        buttonFive.constraintWidth(toAnchor: buttonFive.heightAnchor, multiplier: 1)
        buttonSix.constraintWidth(toAnchor: buttonSix.heightAnchor, multiplier: 1)
        buttonMinus.constraintWidth(toAnchor: buttonMinus.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineFour() {
        buttonOne.constraintWidth(toAnchor: buttonOne.heightAnchor, multiplier: 1)
        buttonTwo.constraintWidth(toAnchor: buttonTwo.heightAnchor, multiplier: 1)
        buttonThree.constraintWidth(toAnchor: buttonThree.heightAnchor, multiplier: 1)
        buttonPlus.constraintWidth(toAnchor: buttonPlus.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineFive() {
        buttonZero.constraintWidth(toAnchor: buttonZero.heightAnchor, multiplier: 2.1)
        buttonDot.constraintWidth(toAnchor: buttonDot.heightAnchor, multiplier: 1)
        buttonEqual.constraintWidth(toAnchor: buttonEqual.heightAnchor, multiplier: 1)
    }
    
}
