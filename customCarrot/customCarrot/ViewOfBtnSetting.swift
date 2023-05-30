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
    @IBOutlet weak var lbSetting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.dataSource = self
        tblView.delegate = self
        
        //밑에거 추가하면 네비게이션 바가 생성되고 Back 버튼가 활성화(생기게) 된다.
        /* self.navigationController?.isNavigationBarHidden = false
        self.title = "설정"
         */
        
        /*
         self.navigationController?.navigationBar.tintColor = UIColor.black
         self.navigationController?.navigationBar.topItem?.title = "뒤로가기"
         self.title = " 세팅 화면"
         */
    
    }
    /*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.green]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
     */
    
    @IBAction func btnBack(_ sender: Any) {
       self.navigationController?.popViewController(animated: true)
    }
    
    var item : [String] = []
    var items = [["알림 및 소리","방해금치 시간 설정"], ["계정 / 정보 관리", "모아보기 사용자 관리", "차단 사용자 관리", "게시글 미노출 사용자 관리", "기타 설정"], ["공지사항", "국가 변경", "언어 설정", "캐시 데이터 삭제하기", "최신버전 업데이트", "로그아웃", "탈퇴하기"]]
    
}
// MARK: 나의 당근 세팅페이지
extension ViewOfBtnSetting : UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
    //UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "알림설정"
        case 1: return "사용자 설정"
        case 2: return "기타"
        default:
            return nil
        }
    }
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 : return 2
        case 1: return 5
        case 2: return 7
        default: return 0
        }
    }
    
    //UITableViewDelegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}


/*
 //delegate
 extension MyCarrotViewController: UIScrollViewDelegate {
 func scrollViewDidScroll(_ scrollView: UIScrollView) {
 print(scrollView.contentOffset.y)
 if scrollView.contentOffset.y <= 0 {
 lbSetting.isHidden = false
 } else {
 lbSetting.isHidden = true
 }
 }
 }
 */
