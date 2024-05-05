//
//  LoginView.swift
//  LayoutInCodeTest_IrinaBakeeva
//
//  Created by Irina Marmyl on 5/4/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    private let loginLabel = UILabel()
    private let singUpButton = UIButton()
    
    var action: (() -> Void)?
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        setupLoginLable()
        setupSingUpButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLoginLable() {
        addSubview(loginLabel)
        
        loginLabel.text = "LOGIN/"
        loginLabel.textColor = .gray
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        
        loginLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(0)
        }
    }
    
    private func setupSingUpButton() {
        addSubview(singUpButton)
        
        singUpButton.setTitle("Sing Up", for: .normal)
        singUpButton.setTitleColor(.gray, for: .normal)
        singUpButton.tintColor = .red
       
        singUpButton.addAction(UIAction { [weak self] _ in
            self?.action?()
        }, for: .touchUpInside)
        
        singUpButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(100)
            make.centerY.equalTo(loginLabel)
        }
    }
    func setup(name: String) {
        loginLabel.text = name
    }
}
