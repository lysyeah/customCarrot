//
//  ViewOfBtnSetting.swift
//  customCarrot
//
//  Created by 이용수 on 2023/05/17.
//

import UIKit

class ViewOfBtnSetting : UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.tintColor = UIColor.black
//        self.navigationController?.navigationBar.topItem?.title = "뒤로가기"
//        self.title = " 세팅 화면"
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.green]
//        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
//
//    }

    
    @IBAction func btnBack(_ sender: Any) {
       self.navigationController?.popViewController(animated: true)
    }
    
}
