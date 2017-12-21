//
//  WCTabBarController.swift
//  Gwc_swift
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 guanweicheng. All rights reserved.
//

import UIKit

class WCTabBarController: UITabBarController {
    
    var report = ReportViewController()
    var forcast = ForcastViewController()
    var train = TrainViewController()
    var staff = StaffViewController()
    
    func createSubViewControllers() -> Void {
        let reportNav = WCBaseNavigationController(rootViewController:report)
        let reportItem = UITabBarItem.init(title: "报表", image: UIImage.init(named: "TabBar_HomeBar"), tag: 0)
        reportNav.tabBarItem = reportItem;
        let forcastNav = WCBaseNavigationController(rootViewController:forcast)
        let forcastItem = UITabBarItem.init(title: "巡店", image: UIImage.init(named: "TabBar_Businesses"), tag: 1)
        forcastNav.tabBarItem = forcastItem;
        let trainNav = WCBaseNavigationController(rootViewController:train)
        let trainItem = UITabBarItem.init(title: "培训", image: UIImage.init(named: "TabBar_Friends"), tag: 2)
        trainNav.tabBarItem = trainItem;
        let staffNav = WCBaseNavigationController(rootViewController:staff)
        let staffItem = UITabBarItem.init(title: "我的", image: UIImage.init(named: "TabBar_Assets"), tag: 3)
        staffNav.tabBarItem = staffItem;
        self.viewControllers = [reportNav,forcastNav,trainNav,staffNav];
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.createSubViewControllers()
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
