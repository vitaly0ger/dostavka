//
//  AvtorizacLabel.swift
//  dostavka
//
//  Created by q on 09.05.2023.
//

import UIKit

class AvtorisacLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setContraintNameStackLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setContraintNameStackLabel()
    }
    
    
    
    func setContraintNameStackLabel() {

      
        text = "Авторизация"
       layer.cornerRadius = 30
       layer.masksToBounds = true
       backgroundColor = .red
        
        textColor = UIColor.black
        textAlignment = NSTextAlignment.center
      
    }
    
    
   


    
    
}
