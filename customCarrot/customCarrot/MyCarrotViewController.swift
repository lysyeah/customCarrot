//
//  MyCarrotViewController.swift
//  customCarrot
//
//  Created by 김응엽 on 2023/05/15.
//

import UIKit

class MyCarrotViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var lbCarrot: UILabel!
    
    @IBOutlet weak var btnSetting: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        let carrotView = MyCarrotHeader.instanceFromNib()
        tblView.tableHeaderView = carrotView
    }
    
    
    @IBAction func btnSetting(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
       
    }
    


}


extension MyCarrotViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "나의 거래"
        case 1: return "나의 동네생활"
        case 2: return "알바 관리"
        case 3: return "나의 비즈니스"
        case 4: return "기타"
        default: return nil
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 4
        case 1: return 1
        case 2: return 1
        case 3: return 3
        case 4: return 6
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    
}

extension MyCarrotViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        if scrollView.contentOffset.y <= 0 {
            lbCarrot.isHidden = true
        } else {
            lbCarrot.isHidden = false
        }
    }
}
