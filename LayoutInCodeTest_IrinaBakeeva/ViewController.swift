//
//  ViewController.swift
//  LayoutInCodeTest_IrinaBakeeva
//
//  Created by Irina Marmyl on 5/4/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let loginView = LoginView()
    private let usernameLabel = UILabel()
    private var imageLine = LoginView()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(named: "viewColor")
        
        setupLoginView()
        setupUsernameLable()
        setupImageLine()
    }
    private func setupLoginView() {
        view.addSubview(loginView)
        
        loginView.action = {
            let viewController = UIViewController()
            viewController.view.backgroundColor = .red
            
            self.present(viewController, animated:  true)
        }
        loginView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(238)
        }
    }
    
    private func setupUsernameLable() {
        view.addSubview(usernameLabel)
        
        usernameLabel.text = "Username"
        usernameLabel.textColor = .gray
        usernameLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(319)
        }
    }
    private func setupImageLine() {
        view.addSubview(imageLine)
        
        imageLine.action = {
            let viewController = UIViewController()
            viewController.view.backgroundColor = .red
            
            self.present(viewController, animated:  true)
        }
        imageLine.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(238)
        }
    }
}

#Preview {
    ViewController()
}
