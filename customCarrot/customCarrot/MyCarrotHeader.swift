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
