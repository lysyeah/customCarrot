//
//  MyCarrotHeader.swift
//  customCarrot
//
//  Created by 김응엽 on 2023/05/15.
//

import UIKit

class MyCarrotHeader: UIView {
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    class func instanceFromNib() -> UIView {
        guard let view = UINib(nibName: "MyCarrotHeader", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? UIView else {
            return UIView()
        }
        return view
    }
    
    
}

// 테두리 설정하기. 위에서 : UIView 를 이미 했지만 또 익스텐션으로 만들 수 있다.
extension UIView {
    @IBInspectable var borderColor : UIColor {
        get{
            let color = self.layer.borderColor ?? UIColor.clear.cgColor
            return UIColor(cgColor: color)
        }
        set{
            self.layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable var borderWidth : CGFloat {
        get{
            return self.layer.borderWidth
        }
        set{
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat {
        get{
            return self.layer.cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
