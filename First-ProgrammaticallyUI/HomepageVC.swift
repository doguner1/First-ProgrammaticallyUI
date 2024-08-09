//
//  HomepageVC.swift
//  First-ProgrammaticallyUI
//
//  Created by qwerty on 8/7/24.
//

import UIKit

class HomepageVC: UIViewController {
    //MARK: - Variables
    let userNameTextField = CustomTextField()
    let passwordTextField = CustomTextField(isSecureText: true, textColor: .red)
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Programmitacally", for: .normal)
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpId()
        configureStackView()
    }
    
    lazy var homepageStackView: UIStackView = { // ==> Hepsine tek tek değer girip aralarına 15 birim bırakmak yerine temiz kod yazdık.
    /// -> lazy sadece çağrıldığında değeri hesaplanır. performans için kullanılabilir
        let stackView = UIStackView(arrangedSubviews: [userNameTextField,passwordTextField,loginButton])
        stackView.axis = .vertical //dikey sıralama olduğunu belirttik
        stackView.spacing = 15
        return stackView
    }()
    
    func configureStackView(){
        view.addSubview(homepageStackView)
        homepageStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homepageStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            homepageStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            homepageStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
    }
    
    //MARK: - Helpers
    func setUpId(){
        view.backgroundColor = .systemBlue /// ->  view arka planını mavi yaptı
//        configureUserNameTextField()
//        configurePassTextField()
//        configureLoginButton()
    }
    
//    func configureUserNameTextField(){
//
//        
//        view.addSubview(userNameTextField)
//        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            userNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
//            /// -> üst alanı ayalardık. cihazın güvenli üst alanında 15 birim aşağı
//            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
//            /// -> metnin başladığı yönünü ayarladık. cihazın sol alanından 15 birim sağa
//            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
//            /// -> metnin bitiş yönünü ayarladık. cihazın sağ alanından 15 birim sola
//            userNameTextField.heightAnchor.constraint(equalToConstant: 30)
//            /// -> yüksekliğini 30 birim ayarladık
//        ])
//    }
//    
//    func configurePassTextField(){
//        view.addSubview(passwordTextField)
//        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 15),
//            /// -> userNameTextField alanından 15 birim aşağısı demek
//            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
//            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
//            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
//        ])
//    }
//    
//    func configureLoginButton(){
//        view.addSubview(loginButton)
//        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
//            /// -> userNameTextField alanından 15 birim aşağısı demek
//            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
//            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
//        ])
//    }
}
