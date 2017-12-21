//
//  StaffViewController.swift
//  Gwc_swift
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 guanweicheng. All rights reserved.
//

import UIKit
import Kingfisher

class StaffViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return 1;
        }else{
            return dataArray!.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FriendTableViewCell = tableView .dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! FriendTableViewCell
        let model = dataArray![indexPath.row] as FriendModel
        cell.userNameLB?.text = model.userName!
        cell.descLB?.text = "大家好我是\(model.userName!)"
        let url = URL(string: model.photo!)
        cell.avatarIV.kf.setImage(with: url,
                                  placeholder: nil,
                                  options: [.transition(.flipFromTop(1))],
                                  progressBlock: nil,
                                  completionHandler: nil)
        return cell
    }
    
    var friendTableView: UITableView?
    var dataArray: Array? = [FriendModel]()
    
    func loadDataLocal(){
        //两种for循环
        for index in 0 ..< 1 {
            let friend0:FriendModel = FriendModel(userName:"怕瓦落地",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2012/10/31/104012571.jpg")
            dataArray?.append(friend0)
            
            let friend1:FriendModel = FriendModel(userName:"王尼玛",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2015/06/17/092631098.jpg")
            dataArray?.append(friend1)
            
            let friend2:FriendModel = FriendModel(userName:"我的心太乱",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2013/08/13/093640311.jpg")
            dataArray?.append(friend2)
            
            let friend3:FriendModel = FriendModel(userName:"囧囧有神",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2014/03/25/105620175.jpg")
            dataArray?.append(friend3)
            
            let friend4:FriendModel = FriendModel(userName:"老衲一头白发",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2014/08/14/114609349.jpg")
            dataArray?.append(friend4)
            
            let friend5:FriendModel = FriendModel(userName:"大头虾",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2014/08/29/103858872.jpg")
            dataArray?.append(friend5)
            
            let friend6:FriendModel = FriendModel(userName:"乡巴佬进城",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2015/06/17/092631098.jpg")
            dataArray?.append(friend6)
            
            let friend7:FriendModel = FriendModel(userName:"萌娜力啥",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2013/08/13/093640311.jpg")
            dataArray?.append(friend7)
            
            let friend8:FriendModel = FriendModel(userName:"网管我要加钱",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2012/10/31/104012571.jpg")
            dataArray?.append(friend8)
            
            let friend9:FriendModel = FriendModel(userName:"装萌卖傻",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2012/10/31/104012571.jpg")
            dataArray?.append(friend9)
            
            let friend10:FriendModel = FriendModel(userName:"中国好胖子",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2013/08/13/093640311.jpg")
            dataArray?.append(friend10)
            
            let friend11:FriendModel = FriendModel(userName:"哥是个传说",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2014/03/25/105620175.jpg")
            dataArray?.append(friend11)
            
            let friend12:FriendModel = FriendModel(userName:"寡人从不装逼",userId:String(index),photo:"http://pic.ihk.cn/first/287_h/ihk/2014/08/29/103858872.jpg")
            dataArray?.append(friend12)
            
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "员工";
        loadDataLocal()
        initTableView();
        
    }
    
    private func initTableView(){
        friendTableView = UITableView(frame: self.view.bounds, style:.grouped)
        friendTableView!.delegate = self
        friendTableView!.dataSource = self
        //        friendsTable!.register(FriendCell.self, forCellReuseIdentifier: "cell")
        friendTableView?.register(UINib(nibName: "FriendTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        view.addSubview(friendTableView!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
