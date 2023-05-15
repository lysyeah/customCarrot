//
//  myCarrotController.swift
//  customCarrot
//
//  Created by 이용수 on 2023/05/10.
//

import UIKit

class myCarrotController : UIViewController{

    @IBOutlet weak var tableview : UITableView!
    let myExchange = ["관심목록", "판매내역", "구매내역", "중고거래 가계부"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }

    // tableview func
    
        
}

extension myCarrotController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myExchange.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
