//
//  ViewController.swift
//  Aprendendo ViewCode
//
//  Created by Kevin Longue on 03/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var label1: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Facebook"
        l.textColor = .white
        l.font = UIFont.boldSystemFont(ofSize: 30)
        l.textAlignment  = .center
        return l
    }()
    var loginlb: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Usuário"
        lb.textColor = .white
        return lb
    }()
    
    var tfLogin: UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.borderStyle = .roundedRect
        login.placeholder = "Nome de usuário ou e-mail"
        
        return login
    }()
    
    var passwordlb: UILabel = {
        let passLb = UILabel()
        passLb.translatesAutoresizingMaskIntoConstraints = false
        passLb.text = "Senha"
        passLb.textColor = .white
        return passLb
    }()
    
    var tfPassword: UITextField = {
        let senha = UITextField()
        senha.translatesAutoresizingMaskIntoConstraints = false
        senha.borderStyle = .roundedRect
        senha.placeholder = "Digite sua senha"
        return senha
    }()
    var isIPAD = {
        return UIDevice.current.userInterfaceIdiom == .pad
        
    }()
    
    
    lazy var sendBut: UIButton = {
        let botao = UIButton()
        botao.translatesAutoresizingMaskIntoConstraints = false
        botao.setTitle("Entrar", for: .normal)
        botao.titleLabel?.font = .systemFont(ofSize: isIPAD ? 24 : 16 , weight: .black)
        botao.backgroundColor = .white
        botao.setTitleColor(.systemBlue, for: .normal)
        botao.layer.cornerRadius = 8
        return botao
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        
        //Chame abaixo as os métodos
        
        addSubs()
        configConstraints()
        
    }
    
    func addSubs(){
        self.view.addSubview(label1)
        self.view.addSubview(loginlb)
        self.view.addSubview(tfLogin)
        self.view.addSubview(passwordlb)
        self.view.addSubview(tfPassword)
        self.view.addSubview(sendBut)
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            
            label1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64),
            label1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            loginlb.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            loginlb.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            
            tfLogin.topAnchor.constraint(equalTo: loginlb.topAnchor, constant: 32),
            tfLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            tfLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
            
            passwordlb.topAnchor.constraint(equalTo: tfLogin.bottomAnchor, constant: 20),
            passwordlb.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            
            tfPassword.topAnchor.constraint(equalTo: passwordlb.topAnchor, constant: 32),
            tfPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            tfPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
            
           //sendBut.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 32),
            sendBut.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            sendBut.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
           sendBut.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
            sendBut.heightAnchor.constraint(equalToConstant: isIPAD ? 60 : 40)
            
        ])
        
    }
}




