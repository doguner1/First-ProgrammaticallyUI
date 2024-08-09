//
//  CustomTextField.swift
//  First-ProgrammaticallyUI
//
//  Created by qwerty on 8/9/24.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        configure()
    }
    
    convenience init(isSecureText: Bool,textColor: UIColor){ //Kolaylık sağlar. İster parametreli ister parametresiz şekilde bu sayfayı çağırmış oluyoruz.
        //Çalışırken kendi init kodunu çağırır, ardından ekstra kodlarını çalıştırır
        self.init(frame: .zero)
        set(isSecureText: isSecureText, textColor: textColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        borderStyle       = .none
        backgroundColor   = .systemGray5
    }
    
    private func set(isSecureText: Bool, textColor: UIColor){
        isSecureTextEntry = isSecureText
        self.textColor = textColor
        /// -> isSecureTextEntry bir textFied özelliği. Bunu değer vererek ayarlayabilirsin
    }
}
